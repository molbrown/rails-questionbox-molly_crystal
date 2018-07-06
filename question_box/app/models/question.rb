class Question < ApplicationRecord
    belongs_to :user
    has_many :answers, dependent: :destroy

    scope :weekly_q, ->(date) { where('updated_at > ?', date ) }

    paginates_per 5

    validates :title, presence: true
    validates :body, presence: true 

end
