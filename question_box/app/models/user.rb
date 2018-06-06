class User < ApplicationRecord
    has_many :questions
    has_many :answers
    
    paginates_per 5
    
    has_secure_password
    has_secure_token :api_token
    validates :username, :password_digest, :email_address, presence: true
    validates_uniqueness_of :username

    def to_s
        username
    end
end
