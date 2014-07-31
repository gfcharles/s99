class Array
  def compress
    head, *tail = self

    return [] if head.nil?
    return tail.compress if head == tail.first
    tail.compress.unshift(head)
  end
end

p [?a, ?a, ?a, ?a, ?b, ?c, ?c, ?a, ?a, ?d, ?e, ?e, ?e, ?e].compress
p [1,1].compress
p [1,2,1,1,3,2,3,3,1,1].compress
p [1].compress
p [].compress