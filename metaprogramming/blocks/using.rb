module Kernel
  def using(resource)
    begin
      yield
    ensure
      resource.dispose
    end
  end
end

# Path: metaprogramming/blocks/using.rb