# P15 (**) Duplicate the elements of a list a given number of times.
#
# Example:
#     scala> duplicateN(3, List('a, 'b, 'c, 'c, 'd))
#     res0: List[Symbol] = List('a, 'a, 'a, 'b, 'b, 'b, 'c, 'c, 'c, 'c, 'c, 'c, 'd, 'd, 'd)
class Array
  def duplicate_n(n)
    raise ArgumentError.new('Parameter must be a fixnum greater than or equal to 0') unless n.is_a? (Fixnum) and n >= 0

    self.flat_map {|el| Array.new(n).fill(el)}
  end
end

p [?a,?b,?c,?c,?d].duplicate_n(3)
p [1].duplicate_n(3)
p [].duplicate_n(3)
p [?a,?b,?c,?c,?d].duplicate_n(0)

begin
  p [?a,?b,?c,?c,?d].duplicate_n(2.5)
rescue => e
  p e
end
begin
  p [?a,?b,?c,?c,?d].duplicate_n(-1)
rescue => e
  p e
end
