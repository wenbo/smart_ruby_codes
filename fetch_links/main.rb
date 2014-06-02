require "debugger"
require 'net/http'

def fetch_links(dname,path)

  uri = "http://#{dname}#{path}" unless dname.include?("http")
  uri = URI(uri) 

  Net::HTTP.start(uri.host, uri.port) do |http|
    request = Net::HTTP::Get.new uri
    res = http.request request
    str_body = res.body                                 # proper argument
    #puts str_body                                     #  for 'path'
    relative_links = str_body.scan(/href="[^(http|\.\.|#)].*?"/)  
    relative_links_path = relative_links.collect do |relative_link|
      relative_link.delete("\"")[5..-1]
    end

    abs_links = str_body.scan(/href="http.*?"/).select do |href|
      href.include? dname
    end
    abs_links_path = abs_links.collect do |abs_href|
      URI(abs_href.delete("\"")[5..-1]).path
    end
    #abs_links_path = []
    mixed_links = (relative_links_path + abs_links_path).uniq
      #puts mixed_links 
      mixed_links.each do |k|
      tmp = k  #.delete("\"")[5..-1]
      #debugger
      if path == '/'
        @arr_links << tmp
      else
        @arr_links.unshift tmp if is_valid_path?(tmp)
      end
    end
  end
end

def is_valid_path?(tmp)
  !@arr_links.include?(tmp) && !tmp.include?("javascript") && !tmp.match(/css$/)
end

def traverse(dname) 
  root = '/'
  fetch_links(dname,root)
  #debugger
  while link = @arr_links.shift
    if !@traversed.include? link
      @traversed << link
      puts "dname #{dname} link #{link}"
      begin 
        fetch_links(dname,link)
        @arr_links.delete(link)    # remove the link that having been traversed
      rescue 
        @arr_links.delete(link)    # remove the link that having been traversed
      end
    end
  end
end


def search(dname)
  puts "After traversing the Web Site #{dname},\
   we have gotten the Hyperlinks as follow\
   (The program just takes quite a few time) :"
   @arr_links = []
   @traversed = []
   traverse(dname)
   @traversed.each do  |i|
     # puts i
     puts "http://#{dname}" + i
   end
end

#search('www.51idc.com')
search("www.doosolar.com")
#search('www.sina.com.cn')
#search('glico.com.cn')
#search('sh.58.com')
