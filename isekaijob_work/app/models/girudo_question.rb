class GirudoQuestion < ApplicationRecord
  has_many :questions

# CSVファイルを読み込むために記述
require 'csv'
  # CSVファイルのヘッダーがGirudoQuestionモデルの属性名と一致していると仮定
  def self.import_from_csv(file_path)
    CSV.foreach(file_path, headers: true) do |row|
      GirudoQuestion.create!(row.to_hash)
  end
end

end
