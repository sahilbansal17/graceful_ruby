def a_method(x, y)
  x + yield(x, y)
end

p a_method(1, 2) { |i, j| (i + j) * 3 }

def b_method
  return yield if block_given?

  'no block'
end

p(b_method { 'here is a block' })
p b_method
