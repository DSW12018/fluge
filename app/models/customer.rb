class Customer < ApplicationRecord
  has_one :customer_address

  PHONE_LENGTH = 11

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true
  validates :email, email: true
  validates :cpf, cpf: true, uniqueness: true
  validates :phone, length: { is: PHONE_LENGTH }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
