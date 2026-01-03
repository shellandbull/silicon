# frozen_string_literal: true

RSpec.describe Silicon do
  it "has a version number" do
    expect(Silicon::VERSION).not_to be nil
  end

  describe ".logger" do
    after do
      # Reset logger after each test
      Silicon.logger = nil
    end

    it "returns the configured logger when set" do
      custom_logger = Logger.new(STDERR)
      Silicon.logger = custom_logger

      expect(Silicon.logger).to eq(custom_logger)
    end

    it "returns a default Logger to STDOUT when config.logger is not set" do
      expect(Silicon.logger).to be_a(Logger)
    end

    it "can log messages" do
      expect { Silicon.logger.info("test message") }.not_to raise_error
    end
  end
end
