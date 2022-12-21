inc = Proc.new { |x| x + 1 }
# more code ...
inc.call(2) # => 3

dec = lambda { |x| x - 1 }
dec.class # => Proc
dec.call(2) # => 1

my_f = ->(x) { x + 1 } # same as my_f = lambda { |x| x + 1}
p my_f.call(2) # => 3
