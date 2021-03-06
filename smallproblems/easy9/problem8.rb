# Create a method that takes two integers as arguments. The first 
# argument is a count, and the second is the first number of a sequence 
# that your method will create. The method should return an Array that 
# contains the same number of elements as the count argument, while the 
# values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 
# or greater, while the starting number can be any integer value. If 
# the count is 0, an empty list should be returned.

# def sequence(count, number)
#   array = []
#   for i in count do
#     array << number * i
#   end
#   array
# end

def sequence(count, first)
  (1..count).map { |idx| idx * first }
end

p sequence(5, 1)