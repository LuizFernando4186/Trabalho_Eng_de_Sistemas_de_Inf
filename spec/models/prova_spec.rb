require 'rails_helper'

RSpec.describe Prova, type: :model do
  it 'valido com disciplina' do
    prova = Prova.new
    prova.disciplina = "ACH2012"
    expect(prova).to be_valid
  end
  it 'invalido sem disciplina' do
    prova = Prova.new
    prova.disciplina = nil
    expect(prova).to_not be_valid
  end
end
