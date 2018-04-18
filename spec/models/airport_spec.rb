# require 'rails_helper'
# 
# RSpec.describe Airport, type: :model do
# 
#   describe "validations" do
#     it "should create airport when it contains valid data" do
#       airport = FactoryBot.build :airport
#       expect(airport).to be_valid
#     end
# 
#     it "should not create airport when name is blank" do
#       begin
# 				FactoryBot.create :airport, name: ''
# 			rescue ActiveRecord::RecordInvalid => invalid
# 				errors = invalid.record.errors
# 				expect(errors.include?(:name)).to be(true)
#       end
#     end
# 
#     it "should not create airport when iata is blank" do
#       begin
# 				FactoryBot.create :airport, iata: ''
# 			rescue ActiveRecord::RecordInvalid => invalid
# 				errors = invalid.record.errors
# 				expect(errors.include?(:iata)).to be(true)
#       end
#     end
# 
#     it "should not create airport when iata's length is bigger than 3" do
#       begin
#         FactoryBot.create :airport, iata: "1234"
#       rescue ActiveRecord::RecordInvalid => invalid
#         errors = invalid.record.errors
#         expect(errors.include?(:iata)).to be(true)
#       end
#     end
# 
#     it "should not create airport when boarding_fee is blank" do
#       begin
#         FactoryBot.create :airport, boarding_fee: ''
#       rescue ActiveRecord::RecordInvalid => invalid
#         errors = invalid.record.errors
#         expect(errors.include?(:boarding_fee)).to be(true)
#       end
#     end
# 
#     it "should not create airport when boarding_fee is negative" do
#       begin
#         FactoryBot.create :airport, boarding_fee: "-10"
#       rescue ActiveRecord::RecordInvalid => RecordInvalid
#         errors = invalid.record.errors
#         expect(errors.include?(:boarding_fee)).to be(true)
#       end
#     end
# 
#   end
# end 