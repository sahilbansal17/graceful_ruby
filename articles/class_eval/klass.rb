# https://manny.codes/the-difference-between-instance-eval-and-class-eval-in-ruby/

class Klass
  def initialize(name)
    @name = name
  end
end

Klass.class_eval do
  def greeting
    puts 'Hello'
  end
end

k = Klass.new('Manny')
k.greeting