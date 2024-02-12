class Choice < ApplicationRecord
  belongs_to :question
  has_many :user_choices

  validates :question_id, presence: true, numericality: { only_integer: true }
  validates :score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  private

  def update_result
    Result.update_result
  end

end
