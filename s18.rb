class Array
  # P18 (**) Extract a slice from a list.
  #     Given two indices, I and K, the slice is the list containing the elements
  #     from and including the Ith element up to but not including the Kth
  #     element of the original list.  Start counting the elements with 0.
  #
  #     Example:
  #     scala> slice(3, 7, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
  #     res0: List[Symbol] = List('d, 'e, 'f, 'g)
  def _slice(i,k)
    self.each_with_index.select {|el| el.last >= i && el.last < k}.map(&:first)
  end
end

p %w(a a a d e f g h i j k)._slice(3,7)