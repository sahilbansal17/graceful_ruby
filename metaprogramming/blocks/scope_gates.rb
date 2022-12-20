v1 = 1
class MyClass
  v2 = 2
  lcoal_variables # => [:v2]
  def my_method
    v3 = 3
    local_variables # => [:v3]
  end
  local_variables # => [:v2]
end

obj = MyClass.new
obj.my_method
local_variables # => [:obj, :v1]

# Path: metaprogramming/blocks/scope_gates.rb