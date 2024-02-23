Rails.application.routes.draw do

  # トップページへのルートです
  root 'home#index'

  # GirudoQuestionsController と GirudoController のアクションが定義されている
  get 'girudo_questions/index'
  get 'girudo_questions/show'
  get 'girudo/index'
  resources :results, only: [:show]
  

  # Questionsと関連するChoicesとUserChoices
  resources :questions do
    resources :choices
    resources :user_choices
  end

  # Resultsと関連するJobProfile
  resources :results, only: [:show] do
    resource :job_profile
  end

  # 別のリソース（もし必要なら）
  resources :job_profiles, only: [:show]

  # 更に追加
  get '/girudo/index', to: 'girudo_questions#index', as: 'girudo_question_index'
  resources :girudo_questions, only: [:index, :show]
  # post 'calculate_results', to: 'user_choices#calculate_results', as: :calculate_results
  
end
