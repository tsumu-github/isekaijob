# Girudo_Questionsのcsvファイルの取り込み、db/csv_dataディレクトリ内のCSVファイルを使用して、各モデルにデータをインポートします。
require 'csv'

namespace :import_csv do
  desc "Import Girudo_questions from CSV"
  task girudo_questions: :environment do
    GirudoQuestion.import_from_csv(Rails.root.join('db', 'csv_data', 'Girudo_questions.csv'))
  end

  desc "Import Questions from CSV"
  task questions: :environment do
    CSV.foreach(Rails.root.join('db', 'csv_data', 'Questions.csv'), headers: true) do |row|
      Question.create! row.to_hash
    end
  end

  desc "Import Results from CSV"
  task results: :environment do
    CSV.foreach(Rails.root.join('db', 'csv_data', 'Results.csv'), headers: true) do |row|
      Result.create! row.to_hash
    end
  end

  desc "Import Job_profiles from CSV"
  task job_profiles: :environment do
    CSV.foreach(Rails.root.join('db', 'csv_data', 'Job_profiles.csv'), headers: true) do |row|
      JobProfile.create! row.to_hash
    end
  end

end
