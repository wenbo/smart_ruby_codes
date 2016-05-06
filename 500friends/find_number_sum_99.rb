# Find number of subsets
# given a set of integers and an integer s, does any non-empty subset sum to s


#You must find number of subsets of an array where the largest number is the sum of the remaining numbers.For example, for an input of:

# 1, 2, 3, 4, 6
# the subsets would be
# 1 + 2 = 3
# 1 + 3 = 4
# 2 + 4 = 6
# 1 + 2 + 3 = 6
# Here is the list of numbers you should run your code on. In the above case the answer would be 4.
# 3, 4, 9, 14, 15, 19, 28, 37, 47, 50, 54, 56, 59, 61, 70, 73, 78, 81, 92, 95, 97, 99

class Subsets

  def initialize(target_sum)
    @target_sum = target_sum
    @stack = []
    @sumInStack = 0
  end

  def populate_subset(data, from_index, end_index)

    if (@sumInStack == @target_sum)
      print_stack
    end

    for current_index in from_index..end_index do
      if (@sumInStack + data[current_index] <= @target_sum)
        @stack << data[current_index]
        @sumInStack += data[current_index]

        populate_subset(data, current_index + 1, end_index)
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
    $COUNTER += 1
  end
end

DATA = [3, 4, 9, 14, 15, 19, 28, 37, 47, 50, 54, 56, 59, 61, 70, 73, 78, 81, 92, 95, 97, 99]
$COUNTER = 0

#DATA = [1, 2, 3, 4, 6]
#15.times do |i|
#DATA << i+1
#end
DATA.each do |i|
  data = DATA.clone
  subsets = Subsets.new(i)
  data.delete(i)
  remaining_data = data
  subsets.populate_subset(remaining_data, 0, remaining_data.size-1)
end
puts "the number of of subsets is #{$COUNTER}"
