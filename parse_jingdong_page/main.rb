require "open-uri"
require "nokogiri"
require "active_record"
#require "debugger"

ActiveRecord::Base.establish_connection(
    adapter:  "mysql2",
    host:     "localhost",
    username: "root",
    password: "",
    database: "jd_products"
    )

class Product < ActiveRecord::Base
end

url = "http://search.jd.com/Search?keyword=ruby&enc=utf-8&wq=ruby&pvid=c1b0osji.2k78ro"

doc = Nokogiri::HTML(open(url))

nodes = doc.css('li.gl-item')

nodes.each do |node|
  price = node.css("div.price i").text
  name = node.css("div.p-name em").text
  image_url = node.css("div.p-img img")[0]["src"]

  puts "price, name, image_url"
  puts price, name, image_url
  #debugger

  Product.create(
      price: price,
      name: name,
      image_url: image_url
  )
end
