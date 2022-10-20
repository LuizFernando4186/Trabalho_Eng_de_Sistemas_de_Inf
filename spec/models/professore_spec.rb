require 'rails_helper'



RSpec.describe Professore, :type => :model do
  context "Validar nome do professor" do
    it "seja valido" do
      professor = Professore.new(nome: 'Marcos Antônio', email: 'professor@usp.br', nusp:'12454546')
      expect(professor).to be_valid
    end

    it "não seja valido" do 
      professor = Professore.new(email: 'professor@usp.br', nusp:'12454546')
      expect(professor).to_not be_valid
    end


    #seguindo o ciclo do TDD
    #teste que falhe
    #no model fizemos passar
    #refatoramos
    it "e retorna não pode ser em branco" do 
    professor = Professore.new(nome: nil)
    professor.valid?
    expect(professor.errors[:nome]).to include("can't be blank")
    end
  end 

  context "Validar email do professor" do
    it "seja valido" do
      professor = Professore.new(nome: 'Marcos Antônio', email: 'professor@usp.br', nusp:'12454546')
      expect(professor).to be_valid
    end

    it "não seja valido" do 
      professor = Professore.new(nome: 'Marcos Antônio', nusp:'12454546')
      expect(professor).to_not be_valid
    end

    it "e retorna não pode ser em branco" do 
      professor = Professore.new(email: nil)
      professor.valid?
      expect(professor.errors[:email]).to include("can't be blank")
    end
  end 

  context "Validar nusp do professor" do
    it "seja valido" do
      professor = Professore.new(nome: 'Marcos Antônio', email: 'professor@usp.br', nusp:'12454546')
      expect(professor).to be_valid
    end

    it "não seja valido" do 
      professor = Professore.new(nome: 'Marcos Antônio')
      expect(professor).to_not be_valid
    end

    it "e retorna não pode ser em branco" do 
    professor = Professore.new(nusp: nil)
    professor.valid?
    expect(professor.errors[:nusp]).to include("can't be blank")
    end
  end 


end
