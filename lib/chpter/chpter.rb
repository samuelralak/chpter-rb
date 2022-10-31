require "chpter/version"
require "chpter/configuration"

module Chpter
  class Error < StandardError; end

  autoload :Configuration, "chpter/configuration"
  autoload :Client, "chpter/client"
  autoload :Resource, "chpter/resource"
  autoload :Object, "chpter/object"

  # Autoload resources
  autoload :MpesaResource, "chpter/resources/payments/mpesa_resource"
  autoload :CheckoutResource, "chpter/resources/checkout"

  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
