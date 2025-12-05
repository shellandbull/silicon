module ActiveIntelligence
  module Sql
    class Query
      include ActiveModel::Model
      attr_accessor :prompt, :response, :result
    end
  end
end
