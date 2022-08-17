class User < ApplicationRecord
  validates :first_name, :last_name, :gender, :role, :address, :price,  presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid Email address" }

  enum role: {
    washerman: 'washerman',
    servent: 'servent',
    plumber: 'plumber',
    electrician: 'electrician',
    admin: 'admin',
    customer: 'customer'
  }
end
