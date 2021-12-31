class User < ApplicationRecord
  MIN_USERNAME_LENGTH = 3
  MAX_USERNAME_LENGTH = 15

  validates :username, uniqueness: { case_sensitive: false },
                       presence: true,
                       length: { minimum: MIN_USERNAME_LENGTH,
                                 maximum: MAX_USERNAME_LENGTH }

  has_many :messages
  
  has_secure_password
end
