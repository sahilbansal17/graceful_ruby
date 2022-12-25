class Loan
  def initialize(book)
    @book = book
    @time = Loan.time_class.now
  end

  def self.time_class
    # in production code, this would be Time
    # in test code, this would be a mock object
    @time_class || Time
  end

  def to_s
    "#{@book.upcase} loaned on #{@time}"
  end
end
