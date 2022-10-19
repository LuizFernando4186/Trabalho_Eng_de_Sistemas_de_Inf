Rails.application.routes.draw do
  root 'provas#new'
  resource :provas
  resource :alunos

  get 'alunos/all'
  get 'provas/all'
end
