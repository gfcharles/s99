require 'benchmark'

def penultimate(list, return_element = nil)
  element = list.shift
  list.empty? ? return_element : penultimate(list, element)
end
a)
  first, second, *rest = *list
  rest.empty? ? first : penultimate2(rest)
end

n = 10_000
list = Array.new(1000).fill {|index| index + 1}

Benchmark.bm(12) do |x|
  x.report('pop:') {n.times do a = list.clone; a.pop; a.pop end}
  x.report('slice:') {n.times do list.slice(-1) end}
  x.report('shift:') { n.times do penultimate(list.clone)  end }
  x.report('head_tail:') { n.times do penultimate2(list)  end }
end

puts list.length
puts list[-2]
puts penultimate(list.clone)
puts penultimate2(list)
puts 'end'
