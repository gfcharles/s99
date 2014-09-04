# Duplicate the elements of a list.
#  Example:
#
#     scala> duplicate(List('a, 'b, 'c, 'c, 'd))
#     res0: List[Symbol] = List('a, 'a, 'b, 'b, 'c, 'c, 'c, 'c, 'd, 'd)
class Array
  def duplicate
    self.flat_map {|el| Array.new(2).fill(el)}
  end
end

p [?a,?b,?c,?c,?d].duplicate
p [1].duplicate
p [].duplicate