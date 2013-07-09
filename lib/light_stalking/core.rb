# -*- coding: utf-8 -*-
class ActionController::Base #:nodoc:
  #TODO 2. 履歴化
  def default_url_options(options={})
    hash = {LightStalking.config.controller_name  => controller_name, LightStalking.config.action_name => action_name}
    options.merge(hash)
  rescue => ex
    {}
  end
end
