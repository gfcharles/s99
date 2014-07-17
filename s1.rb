require 'benchmark'

def last(list)
  element = list.shift
  list.empty? ? element : last(list)
end

def last2(list)
  head, *tail = *list

end

n = 10_000
list = Array.new(1000).fill {|index| index + 1}

Benchmark.bm(12) do |x|
  x.report('builtin:') {n.times do list.last end}
  x.report('slice:') {n.times do list.slice(-1) end}
  x.report('pop:') {n.times do list.clone.pop end}
  x.report('shift:') { n.times do last(list.clone)  end }
  x.report('splat:') { n.times do last2(list)  end }
end

puts list.length
puts last(list.clone)
puts last2(list)
