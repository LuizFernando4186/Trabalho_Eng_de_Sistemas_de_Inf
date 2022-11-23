FactoryBot.define do
 
  factory :questao_fechada do

    grupo_questao { "Grupo 1" }
    titulo { "Meu titulo" }
    enunciado { "Meu enunciado" }
    total_alternativas { 4 }
    alternativas_aluno { 3 }
    alternativa_correta { 1 }
    alts

  end

  factory :alts do
    alternativa { "Minha Alternativa" }
    correta { true }
    questao_id { nil }
  end
  
  def alternativas_questao(num_alternativas: 4)
    FactoryBot.create(:alts) do |alts|
      FactoryBot.create_list(:questao_fechada, num_alternativas, alts: alts)
    end
  end


end
