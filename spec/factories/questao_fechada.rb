FactoryBot.define do
  factory :questao_fechada do
    grupo_questao { "Grupo 1" }
    titulo { "Meu titulo" }
    enunciado { "Meu enunciado" }
    total_alternativas { 4 }
    alternativas_aluno { 3 }
    association :alternativas, factory: :alternativa
    alternativa_correta { 1 }
  end
end
