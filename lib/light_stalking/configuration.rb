module LightStalking
  class Configuration
    include Singleton

    attr_accessor :controller_name
    attr_accessor :action_name
    attr_accessor :history_number

    def initialize
      @controller_name = "before_controller"
      @action_name     = "before_action"
      @history_number  = 1
    end

  end
end
