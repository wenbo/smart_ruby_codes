
str = gets
arr = str.split(" ")
sorted_arr = arr.sort
size = sorted_arr.size
line_num = size/3
line_num += 1 if size%3 != 0

hash = {}

line_num.times do |i|
  hash[i] = [sorted_arr[i], sorted_arr[i + line_num], sorted_arr[i + 2*line_num]]
end

hash.each do |k, v|
  print  v.join(" ")
  puts "\n"
end

# hash.keys.each do |i|
#   hash[i] = [sorted_arr[i], sorted_arr[i + line_num], sorted_arr[i + 2*line_num]]
# end

