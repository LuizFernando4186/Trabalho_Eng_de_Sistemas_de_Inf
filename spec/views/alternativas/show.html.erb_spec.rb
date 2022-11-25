require 'rails_helper'

RSpec.describe "alternativas/show", type: :view do
  before(:each) do
    @alternativa = assign(:alternativa, Alternativa.create!(
      alternativa: "MyText",
      correta: false,
      questao: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
