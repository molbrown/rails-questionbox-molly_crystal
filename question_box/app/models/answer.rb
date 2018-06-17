class Answer < ApplicationRecord
    belongs_to :question
    belongs_to :user

    scope :weekly_a, ->(date) { where('updated_at > ? ', date ) }


end
