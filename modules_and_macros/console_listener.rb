require './dradis.rb'

class ConsoleListener
  def on_new_contact(direction, range)
    puts "DRADIS contact! #{range} kilometers, bearing #{direction}"
  end
end

dradis = Dradis.new
dradis.add_listener(ConsoleListener.new)
dradis.new_contact(120, 23_000)
