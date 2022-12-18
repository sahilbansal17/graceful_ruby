require 'test/unit'
require_relative 'using'

class TestUsing < Test::Unit::TestCase
  class Resource
    def dispose
      @dispose = true
    end

    def disposed?
      @dispose
    end

    def test_dispose_of_resources
      r = Resource.new
      assert !r.disposed?
      using(r) {}
      assert r.disposed?
    end

    def test_dispose_of_resources_in_case_of_exception
      r = Resource.new
      assert !r.disposed?
      assert_raises(RuntimeError) do
        using(r) { raise 'exception' }
      end
      assert r.disposed?
    end
  end
end
