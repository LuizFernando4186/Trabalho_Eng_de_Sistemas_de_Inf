FactoryBot.define do
  factory :alternativa do
    alternativa { "Minha Alternativa" }
    correta { true }
    questao_id { nil }
  end
end
