class TagList < Array
  def <<(tag)
    tag.to_s.strip.split.each do |t|
      super(t)
    end
    self
  end

  def to_s
    join(' ')
  end
end

tags = TagList.new
tags << 'foo' << 'bar' << 'baz buz'
p tags # => ["foo", "bar", "baz", "buz"]
p tags.to_s # => "foo bar baz buz"

tl1 = TagList.new(%w[apple banana])
tl2 = TagList.new(%w[peach pear])
tl3 = tl1 + tl2 # return value is an Array not a TagList
p tl3.to_s # => "[\"apple\", \"banana\", \"peach\", \"pear\"]"

p tl3.class # => Array

# TODO: Fix the above code to return a TagList instead of an Array