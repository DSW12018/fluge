require 'rails_helper'

RSpec.describe Airline, type: :model do
  describe "validations" do
    it "should create airline when it contains valid data" do
      airline = FactoryBot.build :airline
      expect(airline).to be_valid
    end

    it "should not create airline when name is blank" do
      begin
				FactoryBot.create :airline, name: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:name)).to be(true)
      end
    end

    it "should not create airline when iata is blank" do
      begin
				FactoryBot.create :airline, iata: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:iata)).to be(true)
      end
    end

  end
end
