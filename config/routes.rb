Rails.application.routes.draw do
  root 'provas#new'
  resource :provas
  resource :alunos
  resources :professores
  #get 'professores#index'
end
