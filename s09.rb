class Array
  def pack
    def _pack(list, accum, temp)
      return accum << temp if list.empty?

      head, *tail = list
      if (head == temp.first)
        temp << head
      else
        accum << temp
        temp = [head]
      end

      _pack(tail, accum, temp)
    end

    return self if self.empty?
    head, *tail = self
    _pack(tail, [], [head])
  end
end

p [?a, ?a, ?a, ?a, ?b, ?c, ?c, ?a, ?a, ?d, ?e, ?e, ?e, ?e].pack
p [1].pack
p [].pack