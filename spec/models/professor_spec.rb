require 'rails_helper'


RSpec.describe Professor, type: :model do
  context "Validar nome do professor" do
    it "seja valido" do
      professor = Professor.new(nome: 'Marcos Antônio', email: 'professor@usp.br', nusp: 12454546)
      expect(professor).to be_valid
    end

    it "não seja valido" do 
      professor = Professor.new(email: 'professor@usp.br', nusp: 12454546)
      expect(professor).to_not be_valid
    end


    #seguindo o ciclo do TDD
    #teste que falhe
    #no model fizemos passar
    #refatoramos
    it "e retorna não pode ser em branco" do 
    professor = Professor.new(nome: nil)
    professor.valid?
    expect(professor.errors[:nome]).to include("É obrigatório informar o nome!")
    end
  end 

  context "Validar email do professor" do
    it "seja valido" do
      professor = Professor.new(nome: 'Marcos Antônio', email: 'professor@usp.br', nusp: 12454546)
      expect(professor).to be_valid
    end

    it "não seja valido" do 
      professor = Professor.new(nome: 'Marcos Antônio', nusp: 12454546)
      expect(professor).to_not be_valid
    end

    it "e retorna não pode ser em branco" do 
      professor = Professor.new(email: nil)
      professor.valid?
      expect(professor.errors[:email]).to include("É obrigatório informar o email!")
    end
  end 

  context "Validar nusp do professor" do
    it "seja valido" do
      professor = Professor.new(nome: 'Marcos Antônio', email: 'professor@usp.br', nusp: 12454546)
      expect(professor).to be_valid
    end

    it "não seja valido" do 
      professor = Professor.new(nome: 'Marcos Antônio')
      expect(professor).to_not be_valid
    end

    it "e retorna não pode ser em branco" do 
    professor = Professor.new(nusp: nil)
    professor.valid?
    expect(professor.errors[:nusp]).to include("É obrigatório informar o nusp!")
    end
  end 


end
