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

  it "should not create Flight when departure is not a number" do
    begin
      FactoryBot.create :flight, departure: "string"
    rescue ActiveRecord::RecordInvalid => invalid
      errors = invalid.record.errors
      expect(errors.include?(:departure)).to be(true)
    end
  end

  it "should not create Flight when arrival is not a number" do
    begin
      FactoryBot.create :flight, arrival: "string"
    rescue ActiveRecord::RecordInvalid => invalid
      errors = invalid.record.errors
      expect(errors.include?(:arrival)).to be(true)
    end
  end

  it "should not create Flight when duration not a number" do
    begin
      FactoryBot.create :flight, duration: "string"
    rescue ActiveRecord::RecordInvalid => invalid
      errors = invalid.record.errors
      expect(errors.include?(:duration)).to be(true)
    end
  end

  it "should not create Flight when airline is not an airline" do
    begin
      FactoryBot.create :flight, airline: nil
    rescue ActiveRecord::RecordInvalid => invalid
      errors = invalid.record.errors
      expect(errors.include?(:airline)).to be(true)
    end
  end

  it "should not create Flight when aircraft is not an aircraft" do
    begin
      FactoryBot.create :flight, aircraft: nil
    rescue ActiveRecord::RecordInvalid => invalid
      errors = invalid.record.errors
      expect(errors.include?(:aircraft)).to be(true)
    end
  end

  it "should not create Flight when origin is not an airport" do
    begin
      FactoryBot.create :flight, origin: nil
    rescue ActiveRecord::RecordInvalid => invalid
      errors = invalid.record.errors
      expect(errors.include?(:origin)).to be(true)
    end
  end

  it "should not create Flight when destination is not an airport" do
    begin
      FactoryBot.create :flight, destination: nil
    rescue ActiveRecord::RecordInvalid => invalid
      errors = invalid.record.errors
      expect(errors.include?(:destination)).to be(true)
    end
  end
end
