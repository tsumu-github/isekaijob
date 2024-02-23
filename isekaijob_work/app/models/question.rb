class Question < ApplicationRecord
  # QuestionモデルがGirudoQuestionモデルに属している（つまりGirudoQuestionと関連がある）ことを示す。
  belongs_to :girudo_question, class_name: "GirudoQuestion", foreign_key: "girudo_question_id"

  has_many :choices
  has_many :user_choices

  validates :question_text, presence: true, length: { minimum: 5, maximum: 300 }


# CSVファイルを読み込むために記述
require 'csv'
  # CSVファイルのヘッダーがQuestionモデルの属性名と一致していると仮定
  def self.import_from_csv(file_path)
    CSV.foreach(file_path, headers: true) do |row|
      Question.create!(row.to_hash)
  end
end

end
