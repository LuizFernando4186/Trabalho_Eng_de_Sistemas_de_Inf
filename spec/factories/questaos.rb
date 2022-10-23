FactoryBot.define do
  factory :questao do
    grupo_questao { "" }
    tipo { "MyString" }
    titulo { "MyString" }
    enunciado { "MyText" }
    total_alternativas { 1 }
    alternativas_aluno { 1 }
    alternativas { "MyText" }
    alternativa_correta { 1 }
  end
end
