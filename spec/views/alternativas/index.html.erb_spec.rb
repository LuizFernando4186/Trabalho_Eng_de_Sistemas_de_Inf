require 'rails_helper'

RSpec.describe "alternativas/index", type: :view do
  before(:each) do
    assign(:alternativas, [
      Alternativa.create!(
        alternativa: "MyText",
        correta: false,
        questao: nil
      ),
      Alternativa.create!(
        alternativa: "MyText",
        correta: false,
        questao: nil
      )
    ])
  end

  it "renders a list of alternativas" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
