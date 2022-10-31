module Chpter
  attr_writer :domain, :api_key, :chpter_url

  def initialize
    @domain = nil
    @api_key = nil
  end

  def chpter_url
    @chpter_url ||= "https://chpter.co"
  end
end
