require './s09.rb'

class Array
  def encode2
    self.pack.map {|x| x.length == 1 ? x.first : [x.length, x.first]}
  end
end

p [?a, ?a, ?a, ?a, ?b, ?c, ?c, ?a, ?a, ?d, ?e, ?e, ?e, ?e].encode2
p %w(Bill where John had had had had had had had had had was right).encode2
p ['a', 'a', [2,'a'],[2,'a'], 'b', [1,'b']].encode2
p [1].encode2
p [].encode2