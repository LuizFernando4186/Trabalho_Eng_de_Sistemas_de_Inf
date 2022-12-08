require 'rails_helper'

RSpec.describe "alternativas/new", type: :view do

  it "renders new alternativa form" do

    render

    expect(rendered).to match /Nova alternativa/
    expect(rendered).to match /Alternativa/
    expect(rendered).to match /Correta/
    expect(rendered).to match /ID Questão Fechada/

  end

end
