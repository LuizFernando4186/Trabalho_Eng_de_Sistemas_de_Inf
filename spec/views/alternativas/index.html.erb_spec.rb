require 'rails_helper'

RSpec.describe "alternativas/index", type: :view do
  before(:each) do

    @questao_fechada = assign(:questao_fechada, QuestaoFechada.create!(
      :grupo_questao => "Meu grupo de questao",
      :titulo => "Meu titulo",
      :enunciado => "Meu enunciado",
      :total_alternativas => 4,
      :alternativas_aluno => 3,
      :alternativa_correta => 1
    ))
    assign(:alternativas, [
      Alternativa.create!(
        alternativa: "Minha alternativa A",
        correta: true,
        questao_fechada_id: @questao_fechada.id
      ),
      Alternativa.create!(
        alternativa: "Minha alternativa B",
        correta: true,
        questao_fechada_id: @questao_fechada.id
      )
    ])
  end

  it "renders a list of alternativas" do

    render

    expect(rendered).to match /Minha alternativa A/
    expect(rendered).to match /Minha alternativa B/

  end

end
