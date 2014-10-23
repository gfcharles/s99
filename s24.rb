=begin
Lotto: Draw N different random numbers from the set 1..M.
    Example:

    scala> lotto(6, 49)
res0: List[Int] = List(23, 1, 17, 33, 21, 37)
=end
require './s23.rb'
def lotto(m,n)
  (1..n).to_a.random_select(m)
end

p lotto(6,49)