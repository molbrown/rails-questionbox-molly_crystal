class Question < ApplicationRecord
    belongs_to :user
    has_many :answers, dependent: :destroy

    paginates_per 5

    validates :title, presence: true
    validates :body, presence: true 

end
