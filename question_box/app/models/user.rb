class User < ApplicationRecord
    has_many :questions
  
    
    has_secure_password
    has_secure_token :api_token
    validates :username, :password_digest, presence: true
    validates_uniqueness_of :username

    def to_s
        username
    end
end
