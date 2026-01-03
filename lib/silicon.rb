# frozen_string_literal: true
require "active_support"
require "active_model"
require "logger"

module Silicon
  include ActiveSupport::Configurable

  class Error < StandardError; end

  def self.logger
    config.logger || default_logger
  end

  def self.logger=(logger)
    config.logger = logger
  end

  def self.default_logger
    @default_logger ||= Logger.new(STDOUT)
  end
end

Dir[File.join(File.dirname(__FILE__), '**', '*.rb')].each do |file|
  require file
end
