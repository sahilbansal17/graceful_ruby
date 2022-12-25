class Paragraph
  def initialize(text)
    @text = text
  end

  def title?
    @text.upcase == @text
  end

  def reverse
    @text.reverse
  end

  def upcase
    @text.upcase
  end
end

para = Paragraph.new('just a regular string')
p para.title? # => false
p para.upcase
p para.reverse