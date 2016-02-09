
class Notifier
  class Slack
    def initialize
      require 'slack-notifier'
    end

    def notify(type, message)
      slack.ping("@#{ENV["SLACK_MENTION_TO"]} #{message}")
    end

    def slack
      @slack ||= ::Slack::Notifier.new(ENV['SLACK_NOTIFY_WEBHOOK_URL'])
    end
  end

end
