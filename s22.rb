# Create a list containing all integers within a given range.
#
# Example:
#   scala> range(4, 9)

# res0: List[Int] = List(4, 5, 6, 7, 8, 9)
def range(a,b)
  raise ArgumentError.new("Start of range must be less than or equal to end") if b - a < 0

  (b - a + 1).times.map {|i| a + i}
end

p range(4,9)
p range(3,3)
p range(-9, 0)
p range(9, 0)