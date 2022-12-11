require './eventful.rb'

class Dradis
  include Eventful

  event :new_contact

  def initialize
    @contact_count = 0
  end

  # alias_method :new_method_without_contact_count, :new_contact
  original_new_contact = instance_method(:new_contact)
  define_method(:new_contact) do |*args|
    @contact_count += 1
    # new_method_without_contact_count(*args)
    original_new_contact.bind(self).call(*args)
  end
end
