module Chpter
  class Resource
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def post(url, body:, headers: {})
      client.connection.post(url, body, default_headers.merge(headers))
    end

    private

    def default_headers
      {
        domain: client.config.domain,
        authorization: "Token #{client.config.api_key}"
      }
    end
  end
end
