require "faraday"

module Chpter
  class Client
    attr_reader :adapter

    def initialize(adapter: Faraday.default_adapter)
      @adapter = adapter
    end

    def config
      @config ||= Configuration.new
    end

    def connection
      @connection ||= Faraday.new do |conn|
        conn.url_prefix = config.chpter_url
        conn.request :json, content_type: "application/json"
        conn.response :json, content_type: "application/json"
        conn.adapter @adaptor
      end
    end

    # TODO: Can be refactored with metaprogramming
    def mpesa
      MpesaResource.new(self)
    end

    def checkout
      CheckoutResource.new(self)
    end

    def inspect
      "#<Chpter::Client>"
    end
  end
end
