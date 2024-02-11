class JobProfile < ApplicationRecord
  belongs_to :result
  validates :result_id, uniqueness: true

  validates :result_id, presence: true, numericality: { only_integer: true }
  validates :job_image, presence: true, length: { minimum: 5, maximum: 500 }
  validates :job_name_isekai, presence: true, length: { minimum: 5, maximum: 50 }
  validates :content, presence: true, length: { minimum: 5, maximum: 1000 }
  validates :status, presence: true, length: { minimum: 5, maximum: 500 }
  validates :unique_skill, presence: true, length: { minimum: 5, maximum: 500 }
  validates :zyakuten, presence: true, length: { minimum: 5, maximum: 500 }
  validates :refresh, presence: true, length: { minimum: 5, maximum: 500 }
  validates :gendai_job, presence: true, length: { minimum: 5, maximum: 100 }
  validates :rare, presence: true, length: { minimum: 5, maximum: 500 }
  validates :compatibility, presence: true, length: { minimum: 5, maximum: 500 }
end
