require 'rails_helper'

RSpec.describe "alternativas/edit", type: :view do
  before(:each) do
    @alternativa = assign(:alternativa, Alternativa.create!(
      alternativa: "MyText",
      correta: false,
      questao: nil
    ))
  end

  it "renders the edit alternativa form" do
    render

    assert_select "form[action=?][method=?]", alternativa_path(@alternativa), "post" do

      assert_select "textarea[name=?]", "alternativa[alternativa]"

      assert_select "input[name=?]", "alternativa[correta]"

      assert_select "input[name=?]", "alternativa[questao_id]"
    end
  end
end
