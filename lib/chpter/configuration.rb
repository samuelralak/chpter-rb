module Chpter
  class Configuration
    attr_writer :domain, :api_key, :chpter_url

    def initialize
      @domain = nil
      @api_key = nil
    end

    def chpter_url
      @chpter_url ||= "https://chpter.co"
    end

    attr_reader :domain
    attr_reader :api_key
  end
end
