def math(a, b)
  yield(a, b)
end

def do_math(a, b, &operation)
  math(a, b, &operation)
end

# p do_math(2, 3) # no block given (yield) (LocalJumpError)

p do_math(2, 3) { |x, y| x + y } # => 5


def my_method(&the_proc)
  # the & operator converts the block to a Proc object
  the_proc
end

my_f = my_method { |name| "Hello, #{name}!" }
p my_f
p my_f.class
p my_f.call("Bill") # => "Hello, Bill!" # Proc.call invokes the block

# converting the proc back to the block

def my_method_2(greeting)
  "#{greeting}, #{yield}!"
end

my_proc = proc { "Bill" }
p my_method_2("Hello", &my_proc) # => "Hello, Bill!"