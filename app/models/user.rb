class User < ApplicationRecord
  require "securerandom"

  has_secure_password

  validates :first_name, :last_name, :gender, :mob_no, :role, :address, :price, :rating,  presence: true
  validates :email, uniqueness: true, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid Email address" }

  enum role: {
    washerman: 'washerman',
    servent: 'servent',
    plumber: 'plumber',
    electrician: 'electrician',
    admin: 'admin',
    customer: 'customer'
  }
end
