class Question < ApplicationRecord
  has_many :choices
  has_many :user_choices

  belongs_to :girudo_question, class_name: "GirudoQuestion", foreign_key: "girudo_question_id"

  validates :question_text, presence: true, length: { minimum: 5, maximum: 300 }

end
