# coding: utf-8
# 线程变量

count = 0
threads =[]
10.times do |i|
  threads[i] = Thread.new  do
    sleep(rand(0.1))
    Thread.current["myvalue"] =count  #将值赋给当前变量
    count += 1
  end
end

threads.each { |t| t.join; puts t["myvalue"] }
