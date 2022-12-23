def setup(&block)
  @setups << block
end

def event(description, &block)
  @events << { description: description, condition: block }
end

@setups = []
@events = []

load 'events.rb'

@events.each do |event|
  @setups.each { |setup| setup.call }
  puts "ALERT: #{event[:description]}" if event[:condition].call
end
