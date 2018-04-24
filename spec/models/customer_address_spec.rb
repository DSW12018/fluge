require 'rails_helper'

RSpec.describe CustomerAddress, type: :model do
  describe "validations" do
    it "should create customer_address when it contains valid data" do
      customer_address = FactoryBot.build :customer_address
      expect(customer_address).to be_valid
    end

    it "should not create customer_address when zip_code is blank" do
      begin
				FactoryBot.create :customer_address, zip_code: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:zip_code)).to be(true)
      end
    end

    it "should not create customer_address when zip_code is not a valid number" do
      begin
				FactoryBot.create :customer_address, zip_code: "1234A"
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:zip_code)).to be(true)
      end
    end

    it "should not create customer_address when address is blank" do
      begin
				FactoryBot.create :customer_address, address: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:address)).to be(true)
      end
    end

    it "should not create customer_address when number is blank" do
      begin
				FactoryBot.create :customer_address, number: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:number)).to be(true)
      end
    end

    it "should not create customer_address when number is not a valid number" do
      begin
				FactoryBot.create :customer_address, number: "1234A"
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:number)).to be(true)
      end
    end

    it "should not create customer_address when complement is blank" do
      begin
				FactoryBot.create :customer_address, complement: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:complement)).to be(true)
      end
    end

    it "should not create customer_address when neighborhood is blank" do
      begin
				FactoryBot.create :customer_address, neighborhood: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:neighborhood)).to be(true)
      end
    end

    it "should not create customer_address when city is blank" do
      begin
				FactoryBot.create :customer_address, city: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:city)).to be(true)
      end
    end

    it "should not create customer_address when federated_unit is blank" do
      begin
				FactoryBot.create :customer_address, federated_unit: nil
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:federated_unit)).to be(true)
      end
    end

  end
end
