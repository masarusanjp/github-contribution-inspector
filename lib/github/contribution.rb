module Github

class Contribution < Base

  attr_reader :date, :count

  def initialize(date, count)
    @date = date
    @count = count
  end

  def to_s
    "Contributed: #{date} #{count}"
  end
end

end
