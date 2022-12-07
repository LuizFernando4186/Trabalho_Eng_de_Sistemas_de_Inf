Rails.application.routes.draw do
  resources :alternativas
  resources :professors
  root to: 'login#index'
  resource :provas
  resource :alunos
  resource :notas
  
  resources :questoes_fechadas do
    resources :alternativas
  end

  get 'alunos/all'
  get 'alunos/filter'
  get 'provas/all'
  get 'notas/all'
  get 'sign_in', to: "login#index"
  get 'home_aluno', to:'home_aluno#index'
  get 'home_professor', to:'home_professor#index'
  post 'sign_in', to: "login#create"
  delete 'logout', to: "login#destroy"
end