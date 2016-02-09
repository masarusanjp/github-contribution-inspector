require 'notifier/slack'

class Notifier

  def self.current_notifier
    Notifier::Slack.new
  end

  def notify(type, message)

  end

end
