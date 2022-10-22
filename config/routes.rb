Rails.application.routes.draw do

  root 'login#index'
  resources :professors
  resource :provas
  resource :alunos
  resources :questaos
  
  get 'alunos/all'
  get 'provas/all'
  get 'login/index'


end