# P17 (*) Split a list into two parts.
#     The length of the first part is given.  Use a Tuple for your result.
#
#     Example:
#     scala> split(3, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
#     res0: (List[Symbol], List[Symbol]) = (List('a, 'b, 'c),List('d, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
class Array
  def split(n)
    a = self.each_with_index.select {|el| el.last < n}.map(&:first)
    return a, self - a
  end
end

a, b = %w(a a a a h i j k).split(3)
p a
p b

