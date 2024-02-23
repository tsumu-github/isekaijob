class Result < ApplicationRecord
  has_one :job_profiles

  validates :result_text, presence: true, length: { minimum: 5, maximum: 500 }
  

  # CSVファイルを読み込むために記述
  require 'csv'
    # CSVファイルのヘッダーがResultモデルの属性名と一致していると仮定
    def self.import_from_csv(file_path)
      CSV.foreach(file_path, headers: true) do |row|
        Result.create!(row.to_hash)
      end
  end

end