Rails.application.routes.draw do
  resources :professors
  root to: 'home#index'
  resource :provas
  resource :alunos
  resources :questaos

  get 'alunos/all'
  get 'provas/all'
  get 'sign_in', to: "login#index"
  post 'sign_in', to: "login#create"
  delete 'logout', to: "login#destroy"
end