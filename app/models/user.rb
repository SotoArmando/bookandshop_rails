require 'bcrypt'

class User < ApplicationRecord
    has_secure_password
    has_many :bookeditem
    has_many :cartitem
    validates :user, presence: true, uniqueness: true
    validates :user, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password,
              length: { minimum: 6 },
              if: -> { new_record? || !password.nil? }
end
