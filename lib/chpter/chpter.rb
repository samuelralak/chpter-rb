require "chpter/version"
require "chpter/configuration"

module Chpter
  class Error < StandardError; end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
