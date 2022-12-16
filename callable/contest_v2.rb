class ContestV2 
  def initialize(options={})
    @notifier = options.fetch(:notifier) {
      method(:notify_user_by_email)
    }
  end

  def choose_winner
    # send_sms receives message as an argument
    # calls send_sms on the object with the message
    @notifier.call(winning_user, 'You won the contest!')
  end

  private

  def notify_user_by_email(user, message)
    # ...
    puts "Notifying #{user} by email: #{message}"
  end

  def winning_user
    # ...
    User.new
  end
end

class User
  def send_sms(message)
    puts "Sending SMS: #{message}"
  end
end

# ContestV2.new(notifier: User.new.method(:send_sms)).choose_winner
ContestV2.new(notifier: :send_sms.to_proc).choose_winner

# how does this work?
# 1. User.new.method(:send_sms) returns a Method object
# 2. Method#to_proc returns a Proc object
# 3. Proc#call invokes the method on the object
# 4. Proc#call passes the arguments to the method
