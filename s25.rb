=begin
Generate a random permutation of the elements of a list.
Hint: Use the solution of problem P23.

Example:

scala> randomPermute(List('a, 'b, 'c, 'd, 'e, 'f))
res0: List[Symbol] = List('b, 'a, 'd, 'c, 'e, 'f)
=end
require './s23.rb'
class Array
  def random_permute
    self.random_select self.length
  end
end

p %w[a b c d e f].random_permute