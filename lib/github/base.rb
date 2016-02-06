module Github

class Base

  def github
    Client.new(connection)
  end

  private

  def connection
    Faraday.new(url: Github::BASEURL) do |connection|
      connection.adapter :net_http
    end
  end

  class Client
    attr_reader :connection

    def initialize(conn)
      @connection = conn
    end

    def get(path)
      response = connection.get(path)
      yield Nokogiri::HTML.parse(response.body, nil)
    end

  end
end

end
