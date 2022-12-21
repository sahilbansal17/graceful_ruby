def double(callable_object)
  callable_object.call * 2
end

l = lambda { return 10 }
p double(l) # => 20

def another_double
  p = Proc.new { return 10 }
  result = p.call
  return result * 2 # unreachable code
end

p another_double # => 10

# x = Proc.new { return 10 }
# p double(x) # => LocalJumpError: unexpected return

# another difference
p = Proc.new { |a, b| [a, b] }
p p.arity # => 2

p p.call(1, 2, 3) # => [1, 2]
p p.call(1) # => [1, nil]

l = lambda { |a, b| [a, b] }
p l.arity # => 2
p l.call(1, 2, 3) # => ArgumentError: wrong number of arguments (given 3, expected 2)
p l.call(1) # => ArgumentError: wrong number of arguments (given 1, expected 2)