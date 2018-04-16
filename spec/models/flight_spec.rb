require 'rails_helper'

RSpec.describe Flight, type: :model do
  it "should not create Flight when flight_number is blank" do
    begin
      FactoryBot.create :flight, flight_number: ''
    rescue ActiveRecord::RecordInvalid => invalid
      errors = invalid.record.errors
      expect(errors.include?(:flight_number)).to be(true)
    end
  end

  it "should not create Flight when departure is a string" do
    begin
      FactoryBot.create :flight, departure: "string"
    rescue ActiveRecord::RecordInvalid => invalid
      errors = invalid.record.errors
      expect(errors.include?(:departure)).to be(true)
    end
  end

  it "should not create Flight when arrival is a string" do
    begin
      FactoryBot.create :flight, arrival: "string"
    rescue ActiveRecord::RecordInvalid => invalid
      errors = invalid.record.errors
      expect(errors.include?(:arrival)).to be(true)
    end
  end

  it "should not create Flight when duration is a string" do
    begin
      FactoryBot.create :flight, duration: "string"
    rescue ActiveRecord::RecordInvalid => invalid
      errors = invalid.record.errors
      expect(errors.include?(:duration)).to be(true)
    end
  end
end
