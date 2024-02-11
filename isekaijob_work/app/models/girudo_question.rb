class GirudoQuestion < ApplicationRecord
  has_many :questions

  validates :girudo_question_text, presence: true, length: { minimum: 5, maximum: 300 }
end
