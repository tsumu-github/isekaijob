class UserChoice < ApplicationRecord
  validates :question_id, presence: true, numericality: { only_integer: true }
  validates :choice_id, presence: true, numericality: { only_integer: true }
    
end
