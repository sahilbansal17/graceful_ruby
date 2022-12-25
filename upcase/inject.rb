def sum(array)
  element, *rest = array
  case rest
  when []
    element
  else
    element + sum(rest)
  end
end

p sum([1, 2, 3, 4, 5]) # => 15

def sum_inject(array)
  array.inject do |accumulator, element|
    accumulator + element
  end
end

def sum_inject2(array)
  array.inject(:+)
end

p sum_inject([1, 2, 3, 4, 5]) # => 15
p sum_inject2([1, 2, 3, 4, 5]) # => 15

def smallest(array)
  array.inject do |accumulator, element|
    if accumulator < element
      accumulator
    else
      element
    end
  end
end

p smallest([1, 5, -1, 3, 2]) # => -1
p smallest([5]) # => 5

# this is memory inefficient
# because it creates a new array
# every time it calls the block
def keys(hashes)
  hashes.map(&:keys).flatten.uniq
end

# this is memory efficient
# because it uses a Set
# to store the keys
# and then converts it to an array
# at the end
def keys2(hashes)
  hashes.inject(Set.new) do |accumulator, hash|
    accumulator | hash.keys
  end.to_a
end
