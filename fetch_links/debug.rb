require "debugger"
require 'net/http'

dname = "www.sina.com.cn"

uri = URI("http://#{dname}")

Net::HTTP.start(uri.host, uri.port) do |http|
  request = Net::HTTP::Get.new uri
  res = http.request request
  str_body = res.body                                 # proper argument
  #mixed_links = str_body.scan(/href="[^http].*?"/)    #
  relative_links = str_body.scan(/href="[^(http|\.\.|#)].*?"/)    #
  abs_links = str_body.scan(/href="http.*?"/).select do |href|
    href.include? dname
  end

  abs_link_path = abs_links.collect do |abs_href|
    URI(abs_href.delete("\"")[5..-1]).path
  end

  puts (relative_links + abs_link_path).uniq
  #debugger
  #puts   (relative_links + abs_link_path).uniq
end
