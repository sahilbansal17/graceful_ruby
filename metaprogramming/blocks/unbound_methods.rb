module MyModule
  def my_method
    43
  end
end

unbound = MyModule.instance_method(:my_method)
unbound.class # => UnboundMethod
# p unbound.call

# unbound.call # => NoMethodError: undefined method `my_method' for main:Object

# To make an unbound method into a bound method, you must first bind it to an object

String.class_eval do
  define_method :another_method, unbound
end

p "abc".another_method # => 43