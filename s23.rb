# Extract a given number of randomly selected elements from a list.
#
# Example:
#     scala> randomSelect(3, List('a, 'b, 'c, 'd, 'f, 'g, 'h))
#     res0: List[Symbol] = List('e, 'd, 'a)
#
# Hint: Use the solution to problem P20
class Array
  def random_select(n)
    @pnrg = Random.new if @pnrg.nil?
    array = self.dup
    n.times.map { array.delete_at(@pnrg.rand(0...array.length)) }
  end
end

a = %w(a b c d e f g h)
p a.random_select 3
p a