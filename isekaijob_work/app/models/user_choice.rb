class UserChoice < ApplicationRecord
  belongs_to :question
  belongs_to :choice

  validates :question_id, presence: true, numericality: { only_integer: true }
  validates :choice_id, presence: true, numericality: { only_integer: true }
    
end
