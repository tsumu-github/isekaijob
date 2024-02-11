Rails.application.routes.draw do

  # トップページへのルートです
  root 'home#index'

  # GirudoQuestionsController と GirudoController のアクションが定義されている
  get 'girudo_questions/index'
  get 'girudo_questions/show'
  get 'girudo/index'

  # Questionsとその関連するChoicesとUserChoices
  resources :questions do
    resources :choices
    resources :user_choices
  end

  # Resultsとその単一関連するJobProfile
  resources :results do
    resource :job_profile
  end
  # 別のリソース（もし必要なら）
  resources :job_profiles, only: [:index, :show]

  # 更に追加
  get '/show_questions', to: 'questions#show'
  get '/girudo/index', to: 'girudo_questions#index', as: 'girudo_question_index'
  resources :girudo_questions, only: [:index, :show]

end
