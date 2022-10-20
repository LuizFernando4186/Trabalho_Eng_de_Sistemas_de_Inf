require 'rails_helper'

RSpec.describe Prova, type: :model do
  it 'valido com disciplina e nusp' do
    prova = Prova.new
    prova.disciplina = "ACH2012"
    prova.nusp = 1245679
    expect(prova).to be_valid
  end
  it 'invalido sem disciplina' do
    prova = Prova.new
    prova.disciplina = nil
    expect(prova).to_not be_valid
  end
  it 'invalido sem nusp' do
    prova = Prova.new
    prova.nusp = nil
    expect(prova).to_not be_valid
  end
end