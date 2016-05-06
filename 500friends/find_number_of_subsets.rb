@target_sum = 15

@stack = []

@sumInStack = 0

def populateSubset(data, fromIndex, endIndex)

  if (@sumInStack == @target_sum)
    print_stack
  end

  for currentIndex in fromIndex..endIndex do
    if (@sumInStack + data[currentIndex] <= @target_sum)
      @stack << data[currentIndex]
      @sumInStack += data[currentIndex]

      populateSubset(data, currentIndex + 1, endIndex)
      @sumInStack -= @stack.pop
    end
  end

end

def print_stack
  str = ""
  str = str + @target_sum.to_s + " = "
  @stack.each do |i|
    str = str + i.to_s + "+"
  end
  puts str[0..-2]
end

DATA = []
15.times do |i|
  DATA << i+1
end
populateSubset(DATA, 0, DATA.size-1)


#15 = 1+2+3+4+5
#15 = 1+2+3+9
#15 = 1+2+4+8
#15 = 1+2+5+7
#15 = 1+2+12
#15 = 1+3+4+7
#15 = 1+3+5+6
#15 = 1+3+11
#15 = 1+4+10
#15 = 1+5+9
#15 = 1+6+8
#15 = 1+14
#15 = 2+3+4+6
#15 = 2+3+10
#15 = 2+4+9
#15 = 2+5+8
#15 = 2+6+7
#15 = 2+13
#15 = 3+4+8
#15 = 3+5+7
#15 = 3+12
#15 = 4+5+6
#15 = 4+11
#15 = 5+10
#15 = 6+9
#15 = 7+8
#15 = 15
