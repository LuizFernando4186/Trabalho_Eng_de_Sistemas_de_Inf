Rails.application.routes.draw do
  resources :alternativas
  resources :professors
  root to: 'home#index'
  resource :provas
  resource :alunos
  
  resources :questoes_fechadas do
    resources :alternativas
  end

  get 'alunos/all'
  get 'provas/all'
  get 'home', to: "home#index"
  get 'sign_in', to: "login#index"
  post 'sign_in', to: "login#create"
  delete 'logout', to: "login#destroy"
end