require 'rails_helper'

RSpec.describe "questaos/edit", type: :view do
  before(:each) do
    @questao = assign(:questao, Questao.create!(
      grupo_questao: "",
      tipo: "MyString",
      titulo: "MyString",
      enunciado: "MyText",
      total_alternativas: 1,
      alternativas_aluno: 1,
      alternativas: "MyText",
      alternativa_correta: 1
    ))
  end

  it "renders the edit questao form" do
    render

    assert_select "form[action=?][method=?]", questao_path(@questao), "post" do

      assert_select "input[name=?]", "questao[grupo_questao]"

      assert_select "input[name=?]", "questao[tipo]"

      assert_select "input[name=?]", "questao[titulo]"

      assert_select "textarea[name=?]", "questao[enunciado]"

      assert_select "input[name=?]", "questao[total_alternativas]"

      assert_select "input[name=?]", "questao[alternativas_aluno]"

      assert_select "textarea[name=?]", "questao[alternativas]"

      assert_select "input[name=?]", "questao[alternativa_correta]"
    end
  end
end
