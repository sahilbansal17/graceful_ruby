require 'highline'

hl = HighLine.new
friends = hl.ask("Friends?", lambda { |s| s.split(',') })
p "You're friends with: #{friends}"

name = hl.ask("Name?  ", lambda { |s| s.capitalize })
p "Hello, #{name}!"