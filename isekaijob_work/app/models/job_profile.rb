class JobProfile < ApplicationRecord
  # JobProfileモデルがResultモデルに属している（つまりResultと関連がある）ことを示す。
  belongs_to :result

  validates :result_id, uniqueness: true
  validates :result_id, presence: true, numericality: { only_integer: true }
  validates :content, presence: true, length: { minimum: 5, maximum: 1000 }
  validates :strengths, presence: true, length: { minimum: 5, maximum: 500 }
  validates :zyakuten, presence: true, length: { minimum: 5, maximum: 500 }
  validates :refresh, presence: true, length: { minimum: 5, maximum: 500 }
  validates :job, presence: true, length: { minimum: 5, maximum: 100 }


  # CSVファイルを読み込むために記述
  require 'csv'
  # CSVファイルのヘッダーがResultモデルの属性名と一致していると仮定
    def self.import_from_csv(file_path)
      CSV.foreach(file_path, headers: true) do |row|
        JobProfile.create!(row.to_hash)
    end
  end

end
