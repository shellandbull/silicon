require "spec_helper"

RSpec.describe Silicon::Sql::Query, type: :sql do
  let(:schema) { File.read("./spec/support/schema.rb") }

  before do
    Silicon.config do |config|
      config.schema = schema
    end
  end

  after do
    Silicon.config do |config|
      config.schema = nil
    end
  end

  describe "#initialize" do
    let(:prompt) { "Give me all the users with ID 1" }
    subject do
      described_class.new(prompt:)
    end

    it "assigns a prompt" do
      expect(subject.prompt).to eq(prompt)
    end
  end

  describe "t" do
    it "returns an active record lazily evaluated query" do

    end

    it "does not execute twice" do
    end
  end

  describe "result" do
    it "returns the response from the API client" do
    end
  end
end
