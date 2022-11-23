require 'rails_helper'

RSpec.describe Questao, type: :model do
  
  context "Validações" do
    it "é válido com todos os atributos" do
      questao = Questao.new(
        grupo_questao: "Grupo de Questão",
        tipo: "Tipo de Questão",
        titulo: "Título da Questão",
        enunciado: "Enunciado da Questão"
      )
      expect(questao).to be_valid
    end

    it "é inválido sem grupo de questão" do
      questao = Questao.new(
        grupo_questao: nil,
        tipo: "Tipo de Questão",
        titulo: "Título da Questão",
        enunciado: "Enunciado da Questão"
      )
      expect(questao).to_not be_valid
    end

    it "é inválido sem tipo de questão" do
      questao = Questao.new(
        grupo_questao: "Grupo de Questão",
        tipo: nil,
        titulo: "Título da Questão",
        enunciado: "Enunciado da Questão"
      )
      expect(questao).to_not be_valid
    end

    it "é inválido sem título de questão" do
      questao = Questao.new(
        grupo_questao: "Grupo de Questão",
        tipo: "Tipo de Questão",
        titulo: nil,
        enunciado: "Enunciado da Questão"
      )
      expect(questao).to_not be_valid
    end

    it "é inválido sem enunciado de questão" do
      questao = Questao.new(
        grupo_questao: "Grupo de Questão",
        tipo: "Tipo de Questão",
        titulo: "Título da Questão",
        enunciado: nil
      )
      expect(questao).to_not be_valid
    end
    
  end

end
