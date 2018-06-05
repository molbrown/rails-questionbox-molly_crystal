class User < ApplicationRecord
    has_many :questions
  
    has_secure_password
    has_secure_token :api_token
    
    validates :username, presence: true
    validates_uniqueness_of :username
    validates :password_digest, presence: true
end
