require 'rails_helper'

RSpec.describe Notas, type: :model do
  it 'invalido sem prova' do
    nota = Notas.new({nota: 5.6})
    expect(nota).not_to be_valid
  end
  it 'invalido sem nota' do
    prova = Prova.new({disciplina: "ACH@2012"})
    prova.save!

    nota = Notas.new({prova_id: prova.id})
    expect(nota).not_to be_valid
  end
  it 'valido com nota e com prova' do
    prova = Prova.new({disciplina: "ACH@2012"})
    prova.save!

    nota = Notas.new({prova_id: prova.id, nota: 5.6})
    expect(nota).to be_valid
  end
end
