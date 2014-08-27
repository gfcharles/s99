require './s10.rb'

class Array
  def decode
    self.inject([]) {|list,element| element.first.times {list << element.last}; list}
  end
end

p '--------------------'
p [?a, ?a, ?a, ?a, ?b, ?c, ?c, ?a, ?a, ?d, ?e, ?e, ?e, ?e].encode.decode
p %w(Bill where John had had had had had had had had had was right).encode.decode
p [1].encode.decode
p [].encode.decode