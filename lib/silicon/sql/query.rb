
module Silicon
  module Sql
    class Query
      PROMPT = <<~TEXT

      TEXT
# build 3 features
# return string for code to evaluate
# return active record collection
# AI agent that passes DB results and stores a file on callback
      include ActiveModel::Model
      attr_accessor :prompt, :response, :result

      def call()
      end
    end
  end
end
