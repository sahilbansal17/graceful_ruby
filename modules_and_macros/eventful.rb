module Eventful
  def self.included(other)
    other.extend(Macros)
  end

  def add_listener(listener)
    (@listeners ||= []) << listener
  end

  def notify_listeners(event, *args)
    (@listeners || []).each do |listener|
      listener.public_send("on_#{event}", *args)
    end
  end

  module Macros
    def event(name)
      module_eval(%Q{
        def #{name}(*args)
          notify_listeners(:#{name}, *args)
        end
      })
    end
  end
end
