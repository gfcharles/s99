class Array
  def flatten_g
    flat_list = []
    self.each { |element| (element.is_a? Array) ? flat_list += element.flatten_g : flat_list << element}
    flat_list
  end
end

p [1,[2,'zoo', [1.4], 3],4].flatten_g
