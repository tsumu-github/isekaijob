class Choice < ApplicationRecord
  has_many :user_choices

  validates :question_id, presence: true, numericality: { only_integer: true }
  validates :choice_text, presence: true, length: { minimum: 1, maximum: 200 }
  validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
