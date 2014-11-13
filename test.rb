def tester(&block)
  File.readlines('test.rb').each do
    yield &block
  end
end

tester {|line| p line}
# p Dir.pwd
# File.readlines('test.rb').each {|line| p line}