# -*- coding: utf-8 -*-
module Core
  def start_stalking(options ={})
    options.symbolize_keys!
    LightStalking.config.controller_name = options.delete(:controller_name) || LightStalking.config.controller_name
    LightStalking.config.action_name     = options.delete(:action_name)     || LightStalking.config.action_name
    LightStalking.config.history_number  = options.delete(:history_number)  || LightStalking.config.history_number

    class_eval do
      #TODO 2. 履歴化
      def default_url_options(options={})
        hash = {LightStalking.config.controller_name  => controller_name, LightStalking.config.action_name => action_name}
        options.merge(hash)
      rescue => ex
        {}
      end
    end
  end
end

ActionController::Base.send :extend, Core
