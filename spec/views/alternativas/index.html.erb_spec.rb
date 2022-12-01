require 'rails_helper'

RSpec.describe "alternativas/index", type: :view do
  before(:each) do

    @questao_fechada = assign(:questao_fechada, QuestaoFechada.create!(
      :grupo_questao => "Meu grupo de questao",
      :titulo => "Meu titulo",
      :enunciado => "Meu enunciado",
      :total_alternativas => 4,
      :alternativas_aluno => 1,
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

    assert_select "tr>td", :text => "Minha alternativa A".to_s, :count => 1
    assert_select "tr>td", :text => "Minha alternativa B".to_s, :count => 1
  end

end
