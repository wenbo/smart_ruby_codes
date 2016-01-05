# coding: utf-8
# 线程-买票实例
class Ticket
  attr_reader :ticket
  attr_reader :value
  def initialize
    @ticket = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    @value = 0
  end

  def buy_ticket
    @k = @ticket
    if @k.empty?
      puts "no result"
      @value +=1
    else
      sleep(3*rand)
      puts "the ticket is #{@k.last} "
      sleep(3*rand)
      @value +=1
      puts "OK #{@value}"
      @ticket.pop
      puts "**************分隔符******************"
    end
  end
end


a = Ticket.new
t1 = Thread.new { 10.times {puts "线程1" ; a.buy_ticket  } }
t2 = Thread.new { 10.times { puts "线程2"; a.buy_ticket  } }
t3 = Thread.new { 10.times { puts "线程3"; a.buy_ticket  } }
t1.join
t2.join
t3.join
