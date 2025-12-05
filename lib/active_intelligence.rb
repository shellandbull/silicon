# frozen_string_literal: true
require "active_support"
require "active_model"

module ActiveIntelligence
  include ActiveSupport::Configurable

  class Error < StandardError; end
end

Dir[File.join(File.dirname(__FILE__), '**', '*.rb')].each do |file|
  require file
end
