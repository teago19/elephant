module Elephant
  module ModelExtensions
    @@history_table = nil
    @@history_after = []
    def func1
      super + "bbb"
    end

    def self.included base
      base.instance_eval do 
        def self.history_by table, after: []
          @@history_table = table
          @@history_after = after
        end
      end
    end
  end
end