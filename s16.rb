class Array
  #
  # Drop every Nth element from a list.
  #
  # Example:
  #
  #   scala> drop(3, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
  #   res0: List[Symbol] = List('a, 'b, 'd, 'e, 'g, 'h, 'j, 'k)
  #
  def drop(n)
    raise ArgumentError.new('Parameter must be a fixnum greater than or equal to 1') unless n.is_a? (Fixnum) and n >= 1

    (0...self.length).select {|i| (i+1) % n != 0}.map {|i| self[i]}
  end
end

p %w(a b c d e f g h i j k).drop 3
p %w(a b c d e f g h i j k).drop 1
p [1,2,3].drop 4
p [].drop 3

begin
  p [1,2,3].drop 0
rescue => e
  p e.message
end
