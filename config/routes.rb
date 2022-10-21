Rails.application.routes.draw do

  root 'login#index'
  resources :professors
  resource :provas
  resource :alunos
  #resource :questaos, only: [:show, :new, :create, :edit, :update, :destroy]
  #resource :questaos, except: [:index]
  
  get 'alunos/all'
  get 'provas/all'
  get 'login/index'
  get '/questaos', to: 'questaos#index'
  get '/questaos/new', to: 'questaos#new'

end