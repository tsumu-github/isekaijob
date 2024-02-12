class Result < ApplicationRecord
  has_one :job_profiles

  validates :result_text, presence: true, length: { minimum: 5, maximum: 500 }
  validates :count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.update_result
    yes_points = Choice.where(choice_text: 'YES').count
    no_points = Choice.where(choice_text: 'NO').count

    result = yes_points > no_points ? 'A' : 'B'
    Result.create(result: result)
  end
  
end
