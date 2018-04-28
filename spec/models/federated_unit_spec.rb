require 'rails_helper'

RSpec.describe FederatedUnit, type: :model do
  describe "validations" do
    it "should create federated_unit when it contains valid data" do
      federated_unit = FactoryBot.build :federated_unit
      expect(federated_unit).to be_valid
    end

    it "should not create federated_unit when acronym is blank" do
      begin
				FactoryBot.create :federated_unit, acronym: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:acronym)).to be(true)
      end
    end

    it "should not create federated_unit when name is blank" do
      begin
				FactoryBot.create :federated_unit, name: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:name)).to be(true)
      end
    end

  end
end
