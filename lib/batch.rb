require 'github'
require 'redis'
require 'json'
require 'notifier'

class Batch

  class ContributionChecker
    def run
      notify_no_contribution unless has_any_contributions_at_date?(Date.today)
    end

    def notify_no_contribution
      Notifier.current_notifier.notify('no_contribution', 'do not have any contributions today')
    end

    def has_any_contributions_at_date?(date)
      contributions.any? do |contribution|
        contribution.date == date
      end
    end

    def user_id
      ENV['CHECK_CONTRIBUTION_USER_ID']
    end
    
    def user
      @user ||= Github::User.new(user_id)
    end

    def contributions
      @contributions ||= user.contributions
    end

  end

end
