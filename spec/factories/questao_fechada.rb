FactoryBot.define do

  factory :alternativa do
    alternativa { "Minha Alternativa" }
    correta { true }
    questao_id { nil }
  end
  
  factory :questao_fechada do

    grupo_questao { "Grupo 1" }
    titulo { "Meu titulo" }
    enunciado { "Meu enunciado" }
    total_alternativas { 4 }
    alternativas_aluno { 3 }
    alternativa_correta { 1 }
    association :alternativa

  end

  
  #def alternativas_questao(num_alternativas: 4)
    #FactoryBot.create(:alternativa) do |alt|
      #FactoryBot.create_list(:alternativa, num_alternativas, alternativa: alt)
    #end
  #end


end
