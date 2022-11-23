FactoryBot.define do
  factory :questao_fechada do
    grupo_questao { "Grupo 1" }
    titulo { "MyString" }
    enunciado { "MyText" }
    total_alternativas { 4 }
    alternativas_aluno { 3 }
    alternativas { "MyText" }
    alternativa_correta { 1 }
  end
end
