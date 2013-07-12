# -*- coding: utf-8 -*-
module Base
  def start_stalking(options ={})
    options.symbolize_keys!
    LightStalking.config.controller_name = options.delete(:controller_name) || LightStalking.config.controller_name
    LightStalking.config.action_name     = options.delete(:action_name)     || LightStalking.config.action_name
    LightStalking.config.history_number  = options.delete(:history_number)  || LightStalking.config.history_number

    class_eval do
      def default_url_options(options={})
        hash =  if LightStalking.config.history_number == 1
                  hash[LightStalking.config.controller_name] = controller_name
                  hash[LightStalking.config.action_name]     = action_name
                else
                  controller_seq = StrSequence.new(LightStalking.config.controller_name, 0)
                  action_seq = StrSequence.new(LightStalking.config.action_name, 0)

                  LightStalking.config.history_number.times.inject(Hash.new) do | hash, i |
                    # 既存の履歴(params)があるかどうか？
                    if i == 0
                      hash[controller_seq.up!]  = controller_name
                      hash[action_seq.up!]  = action_name
                    else
                      if params[controller_seq.to_s].nil? && params[action_seq.to_s].nil?
                        next hash
                      end

                      c_n = params[controller_seq.to_s]
                      a_n = params[action_seq.to_s]
                      hash[controller_seq.up!]  = c_n
                      hash[action_seq.up!]  =     a_n
                    end
                    hash
                  end
                end
        options.merge(hash)
      rescue => ex
        {}
      end
    end
  end
end

ActionController::Base.send :extend, Base
