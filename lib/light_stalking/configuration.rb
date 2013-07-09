module LightStalking
  class Configuration
    include Singleton

    attr_accessor :controller_name
    attr_accessor :action_name
    attr_accessor :history_count

    def initialize
      @controller_name = "before_controller"
      @action_name     = "before_action"
      @history_count   = 1
    end

  end
end
