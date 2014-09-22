#  P19 (**) Rotate a list N places to the left.
#    Examples:
#     scala> rotate(3, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
#     res0: List[Symbol] = List('d, 'e, 'f, 'g, 'h, 'i, 'j, 'k, 'a, 'b, 'c)
#
#     scala> rotate(-2, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
#     res1: List[Symbol] = List('j, 'k, 'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i)

class Array
  def _rotate(n)
    return [] if self.empty?
    n = n % self.size
    self.drop(n) + self.take(n)
  end
end

p %w(a b c d e f g h i j k)._rotate(3)
p %w(a b c d e f g h i j k)._rotate(3) == %w(a b c d e f g h i j k).rotate(3)

p %w(a b c d e f g h i j k)._rotate(-2)
p %w(a b c d e f g h i j k)._rotate(-2) == %w(a b c d e f g h i j k).rotate(-2)

p %w(a b c d e f g h i j k)._rotate(0)
p %w(a b c d e f g h i j k)._rotate(0) == %w(a b c d e f g h i j k).rotate(0)

p %w(a b c d e f g h i j k)._rotate(60)
p %w(a b c d e f g h i j k)._rotate(60) == %w(a b c d e f g h i j k).rotate(60)

p %w(a b c d e f g h i j k)._rotate(-100)
p %w(a b c d e f g h i j k)._rotate(-100) == %w(a b c d e f g h i j k).rotate(-100)


