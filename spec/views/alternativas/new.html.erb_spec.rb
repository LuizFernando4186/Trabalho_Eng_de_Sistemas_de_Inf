require 'rails_helper'

RSpec.describe "alternativas/new", type: :view do
  before(:each) do

    @questao_fechada = assign(:questao_fechada, QuestaoFechada.create!(
      :grupo_questao => "Meu grupo de questao",
      :titulo => "Meu titulo",
      :enunciado => "Meu enunciado",
      :total_alternativas => 4,
      :alternativas_aluno => 1,
      :alternativa_correta => 1
    ))

  end

  it "renders new alternativa form" do
    render

    assert_select "form[action=?][method=?]", alternativas_path, "post" do

      assert_select "textarea[name=?]", "alternativa[alternativa]"

      assert_select "input[name=?]", "alternativa[correta]"

      assert_select "input[name=?]", "alternativa[questao_id]"
    end
  end
end
