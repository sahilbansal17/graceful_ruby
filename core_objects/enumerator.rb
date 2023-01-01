@names = %w[Sahil Udbhav Himanshu Siddharth Rishabh]

def names
  yield @names.shift
  yield @names.shift
  yield @names.shift
  yield @names.shift
  yield @names.shift
end

enum = to_enum(:names) # => #<Enumerator: #<Object:0x007f9b0a0b0e18>:names>
p enum.next # => "Sahil"
p enum.next # => "Udbhav"

# enum.with_index do |name, index|
#   puts "#{index}: #{name}"
# end

p Enumerator.ancestors # => [Enumerator, Enumerable, Object, Kernel, BasicObject]

# enum.each do |name|
#   puts name
# end

p enum.to_a.compact # => ["Himanshu", "Siddharth", "Rishabh"]