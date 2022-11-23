require 'rails_helper'

RSpec.describe QuestaoFechada, type: :model do
  
  context "Validações" do
    it "é válido com todos os atributos" do
      questao = QuestaoFechada.new(
        grupo_questao: "Grupo de Questão",
        titulo: "Título da Questão",
        enunciado: "Enunciado da Questão",
        total_alternativas: 4,
        alternativas_aluno: 3,
        alternativa_correta: 1
      )
      expect(questao).to be_valid
    end

    it "é inválido sem grupo de questão" do
      questao = QuestaoFechada.new(
        grupo_questao: nil,
        titulo: "Título da Questão",
        enunciado: "Enunciado da Questão",
        total_alternativas: 4,
        alternativas_aluno: 3,
        alternativa_correta: 1
      )
      expect(questao).to_not be_valid
    end

    it "é inválido sem título de questão" do
      questao = QuestaoFechada.new(
        grupo_questao: "Grupo de Questão",
        titulo: nil,
        enunciado: "Enunciado da Questão",
        total_alternativas: 4,
        alternativas_aluno: 3,
        alternativa_correta: 1
      )
      expect(questao).to_not be_valid
    end

    it "é inválido sem enunciado de questão" do
      questao = QuestaoFechada.new(
        grupo_questao: "Grupo de Questão",
        titulo: "Título da Questão",
        enunciado: nil,
        total_alternativas: 4,
        alternativas_aluno: 3,
        alternativa_correta: 1
      )
      expect(questao).to_not be_valid
    end

    it "é inválido sem total de alternativas" do
      questao = QuestaoFechada.new(
        grupo_questao: "Grupo de Questão",
        titulo: "Título da Questão",
        enunciado: "Enunciado da Questão",
        total_alternativas: nil,
        alternativas_aluno: 3,
        alternativa_correta: 1
      )
      expect(questao).to_not be_valid
    end

    it "é inválido sem alternativas do aluno" do
      questao = QuestaoFechada.new(
        grupo_questao: "Grupo de Questão",
        titulo: "Título da Questão",
        enunciado: "Enunciado da Questão",
        total_alternativas: 4,
        alternativas_aluno: nil,
        alternativa_correta: 1
      )
      expect(questao).to_not be_valid
    end

    it "é inválido sem alternativa correta" do
      questao = QuestaoFechada.new(
        grupo_questao: "Grupo de Questão",
        titulo: "Título da Questão",
        enunciado: "Enunciado da Questão",
        total_alternativas: 4,
        alternativas_aluno: 3,
        alternativa_correta: nil
      )
      expect(questao).to_not be_valid
    end

    
  end

end
