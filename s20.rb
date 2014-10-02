# Remove the Kth element from a list.
#     Return the list and the removed element in a Tuple. Elements are numbered from 0.
#
# Example:
# scala> removeAt(1, List('a, 'b, 'c, 'd))
# res0: (List[Symbol], Symbol) = (List('a, 'c, 'd),'b)

class Array
  def removeAt(k)
    return self.take(k) + self.drop(k+1), self[k]
  end
end

p %w(a b c d).removeAt 1