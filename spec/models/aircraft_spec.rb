require 'rails_helper'

RSpec.describe Aircraft, type: :model do

  describe "validations" do
    it "should create aircraft when it contains valid data" do
      aircraft = FactoryBot.build :aircraft
      expect(aircraft).to be_valid
    end

    it "should not create aircraft when name is blank" do
      begin
				FactoryBot.create :aircraft, name: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:name)).to be(true)
      end
    end

    it "should not create aircraft when iata is blank" do
      begin
				FactoryBot.create :aircraft, iata: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:iata)).to be(true)
      end
    end

    it "should not create aircraft when iata's length is bigger than 3" do
      begin
        FactoryBot.create :aircraft, iata: "1234"
      rescue ActiveRecord::RecordInvalid => invalid
        errors = invalid.record.errors
        expect(errors.include?(:iata)).to be(true)
      end
    end

    it "should not create aircraft when manufacturer is blank" do
      begin
        FactoryBot.create :aircraft, manufacturer: ''
      rescue ActiveRecord::RecordInvalid => invalid
        errors = invalid.record.errors
        expect(errors.include?(:manufacturer)).to be(true)
      end
    end

  end
end
