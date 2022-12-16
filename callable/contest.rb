class Contest

  def initialize(options={})
    @notifier = options.fetch(:notifier) {
      method(:notify_user_by_email)
    }
  end

  def choose_winner
    @notifier.call(winning_user, 'You won the contest!')
  end

  private

  def notify_user_by_email(user, message)
    # ...
    puts "Notifying #{user} by email: #{message}"
  end

  def winning_user
    # ...
    'sahil'
  end
end

Contest.new.choose_winner