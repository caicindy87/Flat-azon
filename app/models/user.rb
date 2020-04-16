class User < ApplicationRecord
  has_many :items
  has_many :carts

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  before_save { self.email = email.downcase }
  validates :username, presence: true, length: {minimum: 5, maximum: 50},
            uniqueness: true
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, length: {maximum: 50},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive: false}

  has_secure_password
  validates :password, presence: true, length: {minimum: 5}, allow_nil: true
end
