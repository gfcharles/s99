# Insert an element at a given position into a list.
# Example:
#
#     scala> insertAt('new, 1, List('a, 'b, 'c, 'd))
#     res0: List[Symbol] = List('a, 'new, 'b, 'c, 'd)

class Array
  def insertAt(element, k)
    self.take(k) + [element] + self.drop(k)
  end
end

p %w(a b c d).insertAt 'new', 1