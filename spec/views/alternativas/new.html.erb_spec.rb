require 'rails_helper'

RSpec.describe "alternativas/new", type: :view do
  before(:each) do
    assign(:alternativa, Alternativa.new(
      alternativa: "MyText",
      correta: false,
      questao: nil
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
