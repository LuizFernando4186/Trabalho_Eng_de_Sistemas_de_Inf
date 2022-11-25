FactoryBot.define do
  factory :alternativa do
    alternativa { "Minha Alternativa Factory" }
    correta { true }
    questao_id { 1 }
  end
end
