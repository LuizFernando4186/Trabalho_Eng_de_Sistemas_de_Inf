FactoryBot.define do
  
  factory :questao_fechada do

    after :create do |questao|
      create_list :alternativa, 4, questao_id: questao
    end

    grupo_questao { "Grupo 1" }
    titulo { "Meu titulo" }
    enunciado { "Meu enunciado" }
    total_alternativas { 4 }
    alternativas_aluno { 3 }
    alternativa_correta { 1 }

  end

end
