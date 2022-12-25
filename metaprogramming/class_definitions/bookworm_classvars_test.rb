class FakeTime
  def self.now
    'Mon Apr 06 12:15:30'
  end
end

require 'test/unit'
require './bookworm_classvars'

class TestLoan < Test::Unit::TestCase
  def test_conversion_to_string
    Loan.instance_eval { @time_class = FakeTime }
    loan = Loan.new('War and Peace')
    assert_equal 'WAR AND PEACE loaned on Mon Apr 06 12:15:30', loan.to_s
  end
end
