require "light_stalking/version"
require "light_stalking/configuration"

module LightStalking
  module_function
  def config
    ::LightStalking::Configuration.instance
  end
end

if defined?(Rails)
  require 'light_stalking/rails'
end
