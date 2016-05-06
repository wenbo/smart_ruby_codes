n = gets.to_i
(0..n).each do |i|
  lis = gets.strip.split(" ")
  a = lis[0].to_i
  b = lis[1].to_i
  puts a + b
end
