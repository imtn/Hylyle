class User < ApplicationRecord
  has_many :events, dependent: :destroy
  before_save { self.email = email.downcase }

  validates :name, presence: true, length: {maximum: 100}

  GOOD_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
                    format: { with: GOOD_EMAIL_REGEX },
                    uniqueness: { case_insensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }
end
