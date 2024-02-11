# 予め配列に質問のテキストを用意
girudo_questions = [
  { girudo_question_text: 'Girudo1の質問テキスト' },
  { girudo_question_text: 'Girudo2の質問テキスト' },
  { girudo_question_text: 'Girudo3の質問テキスト' },
  { girudo_question_text: 'Girudo4の質問テキスト' }
]

# 配列をループして各質問をデータベースに保存
girudo_questions.each do |attrs|
  GirudoQuestion.create!(attrs)
end


# Questionsのデータを作成
girudo1_id = GirudoQuestion.find_by(girudo_question_text: 'Girudo1の質問テキスト').id
girudo2_id = GirudoQuestion.find_by(girudo_question_text: 'Girudo2の質問テキスト').id
girudo3_id = GirudoQuestion.find_by(girudo_question_text: 'Girudo3の質問テキスト').id
girudo4_id = GirudoQuestion.find_by(girudo_question_text: 'Girudo4の質問テキスト').id


questions = [
  { girudo_question_id: girudo1_id, question_text: 'Girudo1の質問1-1' },
  { girudo_question_id: girudo1_id, question_text: 'Girudo1の質問1-2' },
  { girudo_question_id: girudo1_id, question_text: 'Girudo1の質問1-3' },
  { girudo_question_id: girudo1_id, question_text: 'Girudo1の質問1-4' },
  { girudo_question_id: girudo1_id, question_text: 'Girudo1の質問1-5' },
  { girudo_question_id: girudo1_id, question_text: 'Girudo1の質問1-6' },
  { girudo_question_id: girudo1_id, question_text: 'Girudo1の質問1-7' },
  { girudo_question_id: girudo1_id, question_text: 'Girudo1の質問1-8' },
  { girudo_question_id: girudo1_id, question_text: 'Girudo1の質問1-9' },
  { girudo_question_id: girudo2_id, question_text: 'Girudo2の質問2-1' },
  { girudo_question_id: girudo2_id, question_text: 'Girudo2の質問2-2' },
  { girudo_question_id: girudo2_id, question_text: 'Girudo2の質問2-3' },
  { girudo_question_id: girudo2_id, question_text: 'Girudo2の質問2-4' },
  { girudo_question_id: girudo2_id, question_text: 'Girudo2の質問2-5' },
  { girudo_question_id: girudo2_id, question_text: 'Girudo2の質問2-6' },
  { girudo_question_id: girudo2_id, question_text: 'Girudo2の質問2-7' },
  { girudo_question_id: girudo2_id, question_text: 'Girudo2の質問2-8' },
  { girudo_question_id: girudo2_id, question_text: 'Girudo2の質問2-9' },
  { girudo_question_id: girudo3_id, question_text: 'Girudo3の質問3-1' },
  { girudo_question_id: girudo3_id, question_text: 'Girudo3の質問3-2' },
  { girudo_question_id: girudo3_id, question_text: 'Girudo3の質問3-3' },
  { girudo_question_id: girudo3_id, question_text: 'Girudo3の質問3-4' },
  { girudo_question_id: girudo3_id, question_text: 'Girudo3の質問3-5' },
  { girudo_question_id: girudo3_id, question_text: 'Girudo3の質問3-6' },
  { girudo_question_id: girudo3_id, question_text: 'Girudo3の質問3-7' },
  { girudo_question_id: girudo3_id, question_text: 'Girudo3の質問3-8' },
  { girudo_question_id: girudo3_id, question_text: 'Girudo3の質問3-9' },
  { girudo_question_id: girudo4_id, question_text: 'Girudo4の質問4-1' },
  { girudo_question_id: girudo4_id, question_text: 'Girudo4の質問4-2' },
  { girudo_question_id: girudo4_id, question_text: 'Girudo4の質問4-3' },
  { girudo_question_id: girudo4_id, question_text: 'Girudo4の質問4-4' },
  { girudo_question_id: girudo4_id, question_text: 'Girudo4の質問4-5' },
  { girudo_question_id: girudo4_id, question_text: 'Girudo4の質問4-6' },
  { girudo_question_id: girudo4_id, question_text: 'Girudo4の質問4-7' },
  { girudo_question_id: girudo4_id, question_text: 'Girudo4の質問4-8' },
  { girudo_question_id: girudo4_id, question_text: 'Girudo4の質問4-9' },
]

# Questionsテーブルにデータを挿入
questions.each do |attrs|
    Question.create!(attrs)
  end
