Rails.application.routes.draw do
  resources :professors
  root 'provas#new'
  resource :provas
  resource :alunos

  get 'alunos/all'
  get 'provas/all'
end
