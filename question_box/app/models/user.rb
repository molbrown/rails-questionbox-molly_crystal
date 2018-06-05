class User < ApplicationRecord
    has_many :questions
    has_many :answers
  
    
    has_secure_password
    validates :username, :password_digest, presence: true
    validates_uniqueness_of :username

    def to_s
        username
    end
end
