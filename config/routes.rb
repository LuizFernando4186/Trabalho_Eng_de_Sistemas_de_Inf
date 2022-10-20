Rails.application.routes.draw do
  resources :professors
  root 'login#index'
  resource :provas
  resource :alunos

  get 'alunos/all'
  get 'provas/all'
  get 'login/index'
end