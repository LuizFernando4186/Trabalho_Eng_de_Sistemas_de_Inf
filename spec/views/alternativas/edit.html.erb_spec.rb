require 'rails_helper'

RSpec.describe "alternativas/edit", type: :view do
  before(:each) do

    @questao_fechada = assign(:questao_fechada, QuestaoFechada.create!(
      :grupo_questao => "Meu grupo de questao para EDIT",
      :titulo => "Meu titulo para EDIT",
      :enunciado => "Meu enunciado para EDIT",
      :total_alternativas => 4,
      :alternativas_aluno => 3,
      :alternativa_correta => 2
    ))

    @alternativa = assign(:alternativa, Alternativa.create!(
      alternativa: "MyText",
      correta: true,
      questao_fechada_id: @questao_fechada.id
    ))

  end

  it "renders the edit alternativa form" do
    render

    assert_select "form[action=?][method=?]", alternativa_path(@alternativa), "post" do

      assert_select "textarea[name=?]", "alternativa[alternativa]"

      assert_select "input[name=?]", "alternativa[correta]"

      assert_select "input[name=?]", "alternativa[questao_fechada_id]"
    end
  end
end
