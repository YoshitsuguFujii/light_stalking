require "light_stalking/version"

module LightStalking
  def default_url_options(options={})
    hash = {controller_name: controller_name, action_name: action_name}
    options.merge(hash)
  rescue => ex
    {}
  end
end
