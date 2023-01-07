# frozen_string_literal: false

module Foodegrient
  # Provides access to Food data
  module DBContent
    # Data Mapper: Spoonacular recipes -> Menu entity
    class TopMapper
      def initialize()
         @redis_obj = Foodegrient::Cache::Client.new()
        #  @top_redis = @redis_obj.get("top")
      end

      def update()
        data = $DB[:recipe].order(:likes).offset(0).last
        @redis_obj.set("top", data.to_json)
        
        puts(data)
      end
    end
  end
end
