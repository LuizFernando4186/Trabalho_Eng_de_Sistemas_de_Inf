require 'rails_helper'

RSpec.describe "alternativas/show", type: :view do
  before(:each) do
    @questao_fechada = assign(:questao_fechada, QuestaoFechada.create!(
      :grupo_questao => "Meu grupo de questao para SHOW",
      :titulo => "Meu titulo para SHOW",
      :enunciado => "Meu enunciado para SHOW",
      :total_alternativas => 5,
      :alternativas_aluno => 5,
      :alternativa_correta => 5
    ))

    @alternativa = assign(:alternativa, Alternativa.create!(
      alternativa: "Minha alternativa para SHOW",
      correta: true,
      questao_fechada_id: @questao_fechada.id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Minha alternativa para SHOW/)
    expect(rendered).to match(/true/)
    
  end
end
