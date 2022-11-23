FactoryBot.define do
  factory :alternativa do
    alternativa { "Minha Alternativa" }
    correta { false }
    questao { nil }
  end
end
