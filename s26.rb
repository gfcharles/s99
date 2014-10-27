=begin
Generate the combinations of K distinct objects chosen from the N elements of a list.
    In how many ways can a committee of 3 be chosen from a group of 12 people? We all know that there are
    C(12,3) = 220 possibilities (C(N,K) denotes the well-known binomial coefficient). For pure mathematicians,
    this result may be great. But we want to really generate all the possibilities.

    Example:

    scala> combinations(3, List('a, 'b, 'c, 'd, 'e, 'f))
    res0: List[List[Symbol]] = List(List('a, 'b, 'c), List('a, 'b, 'd), List('a, 'b, 'e), ...
=end
class Enumerator
  def +(addend)
    Enumerator.new do |y|
      self.each {|el| y << el}
      addend.each {|el| y << el}
    end
  end
end

class Array
  def _combination(n)
    return [[]] if n == 0
    return [] if self.length == 0

    head, *tail = self
    tail._combination(n-1).map {|el| [head] + el} + tail._combination(n)
  end
end


p (?a..?f).to_a._combination(3).to_a

p (1..5).to_a._combination(3).to_a
p (1..5).to_a._combination(3).map {|combo| combo.inject &:+}