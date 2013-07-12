module LightStalking
  class Configuration
    include Singleton

    attr_accessor :controller_name
    attr_accessor :action_name
    attr_accessor :history_number

    def initialize
      @controller_name = "bc" # before_controller
      @action_name     = "ba" # before_action
      @history_number  = 1
    end

  end
end
