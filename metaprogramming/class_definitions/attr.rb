class MyClass
  def my_attribute=(value)
    @my_attribute = value
  end

  def my_attribute
    @my_attribute
  end
end

obj = MyClass.new
obj.my_attribute = 'x'
p obj.my_attribute # => "x"


class MyClass2
  # this is called as a class macro
  attr_accessor :my_attribute
end

obj2 = MyClass2.new
obj2.my_attribute = 'x'
p obj2.my_attribute # => "x"