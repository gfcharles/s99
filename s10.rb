# require './s09.rb'

class Array
  # def encode
  #   self.pack.map {|x| [x.length, x.first]}
  # end

  def encode
    self.reduce([]) do |z, x|
      case
        when z.empty?
          z << [1,x]
        when z.last[1] == x
          z.last[0] += 1
        else
          z << [1,x]
      end
      z
    end
  end

end

p [?a, ?a, ?a, ?a, ?b, ?c, ?c, ?a, ?a, ?d, ?e, ?e, ?e, ?e].encode
p %w(Bill where John had had had had had had had had had was right).encode
p [1].encode
p [].encode