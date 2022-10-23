require 'rails_helper'

RSpec.describe "questaos/index", type: :view do
  before(:each) do
    assign(:questaos, [
      Questao.create!(
        grupo_questao: "",
        tipo: "Tipo",
        titulo: "Titulo",
        enunciado: "MyText",
        total_alternativas: 2,
        alternativas_aluno: 3,
        alternativas: "MyText",
        alternativa_correta: 4
      ),
      Questao.create!(
        grupo_questao: "",
        tipo: "Tipo",
        titulo: "Titulo",
        enunciado: "MyText",
        total_alternativas: 2,
        alternativas_aluno: 3,
        alternativas: "MyText",
        alternativa_correta: 4
      )
    ])
  end

  it "renders a list of questaos" do
    render
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Tipo".to_s, count: 2
    assert_select "tr>td", text: "Titulo".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
