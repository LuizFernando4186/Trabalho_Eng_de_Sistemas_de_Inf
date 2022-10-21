Rails.application.routes.draw do

  root 'login#index'
  resources :professors
  resource :provas
  resource :alunos
  resource :questaos

  get 'alunos/all'
  get 'provas/all'
  get 'login/index'

end