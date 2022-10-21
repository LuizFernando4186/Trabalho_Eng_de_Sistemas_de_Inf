json.extract! questao, :id, :grupo_questao, :tipo, :titulo, :enunciado, :total_alternativas, :alternativas_aluno, :alternativas, :alternativa_correta, :created_at, :updated_at
json.url questao_url(questao, format: :json)
