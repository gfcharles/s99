class Array
  def pack
    self.reduce([]) do |z, x|
      case
        when z.empty?
          z << [x]
        when z.last.first == x
          z.last << x
        else
          z << [x]
      end
      z
    end
  end
end

p [?a, ?a, ?a, ?a, ?b, ?c, ?c, ?a, ?a, ?d, ?e, ?e, ?e, ?e].pack
p [1].pack
p [].pack
