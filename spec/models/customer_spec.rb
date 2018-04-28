require 'rails_helper'

RSpec.describe Customer, type: :model do

  describe "validations" do
    it "should create customer when it contains valid data" do
      customer = FactoryBot.build :customer
      expect(customer).to be_valid
    end

    it "should not create customer when last_name is blank" do
      begin
				FactoryBot.create :customer, first_name: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:first_name)).to be(true)
      end
    end

    it "should not create customer when last_name is blank" do
      begin
				FactoryBot.create :customer, last_name: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:last_name)).to be(true)
      end
    end

    it "should not create customer when birth_date is blank" do
      begin
				FactoryBot.create :customer, birth_date: ''
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:birth_date)).to be(true)
      end
    end

    it "should not create customer when cpf is invalid" do
      begin
        invalid_cpf = "21112100131"
				FactoryBot.create :customer, cpf: invalid_cpf
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:cpf)).to be(true)
      end
    end

    it "should not create customer when cpf is not unique" do
      begin
				FactoryBot.create :customer
				FactoryBot.create :customer, email: 'joao@example.com'
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
        expect(errors.include?(:cpf)).to be(true)
      end
    end

    it "should not create customer when email is invalid" do
      begin
        invalid_email = "joao@"
				FactoryBot.create :customer, email: invalid_email
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:email)).to be(true)
      end
    end

    it "should not create customer when email is not unique" do
      begin
        FactoryBot.create :customer
        FactoryBot.create :customer, cpf: '52611011150'
      rescue ActiveRecord::RecordInvalid => invalid
        errors = invalid.record.errors
        expect(errors.include?(:email)).to be(true)
      end
    end

    it "should not create customer when phone is invalid" do
      begin
        invalid_phone = ""
				FactoryBot.create :customer, phone: invalid_phone
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:phone)).to be(true)
      end
    end

    it "should not create customer when password length is invalid" do
      begin
        invalid_password = "123"
				FactoryBot.create :customer, password: invalid_password
			rescue ActiveRecord::RecordInvalid => invalid
				errors = invalid.record.errors
				expect(errors.include?(:password)).to be(true)
      end
    end
  end

end
