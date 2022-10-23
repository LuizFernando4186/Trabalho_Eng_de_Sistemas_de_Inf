require 'rails_helper'

RSpec.describe "questaos/show", type: :view do
  before(:each) do
    @questao = assign(:questao, Questao.create!(
      grupo_questao: "",
      tipo: "Tipo",
      titulo: "Titulo",
      enunciado: "MyText",
      total_alternativas: 2,
      alternativas_aluno: 3,
      alternativas: "MyText",
      alternativa_correta: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/4/)
  end
end
