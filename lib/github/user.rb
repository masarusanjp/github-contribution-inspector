module Github

class User < Base

  attr_reader :user_id

  def initialize(user_id)
    @user_id = user_id
  end

  def contributions
    @contributions ||= github.get(contributions_path) do |doc|
      doc.css('rect.day').map do |node|
        Github::Contribution.new(
          Date.parse(node.attribute('data-date').value),
          node.attribute('data-count').value.to_i
        )
      end
    end
  end

  private

  def contributions_path
    "/users/#{user_id}/contributions"
  end

end

end
