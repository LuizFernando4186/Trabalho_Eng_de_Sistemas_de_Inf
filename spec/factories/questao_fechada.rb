FactoryBot.define do
 
  factory :questao_fechada do

    grupo_questao { "Grupo 1" }
    titulo { "Meu titulo" }
    enunciado { "Meu enunciado" }
    total_alternativas { 4 }
    alternativas_aluno { 3 }
    alternativa_correta { 1 }
    alternativas

  end
  
  def alternativas_questao(num_alternativas: 4)
    FactoryBot.create(:alternativa) do |alternativa|
      FactoryBot.create_list(:questao_fechada, num_alternativas, alternativa: alternativa)
    end
  end


end
