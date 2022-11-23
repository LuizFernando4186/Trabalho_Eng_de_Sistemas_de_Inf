FactoryBot.define do
  factory :alternativa do
    alternativa { "Minha Alternativa" }
    correta { false }
    questao_id { nil }
  end
end
