require 'rails_helper'

RSpec.describe Alternativa, type: :model do

    it "é válido com todos os atributos" do
      questao = QuestaoFechada.new({
        grupo_questao: "Grupo de Questão",
        titulo: "Título da Questão",
        enunciado: "Enunciado da Questão",
        total_alternativas: 4,
        alternativas_aluno: 3,
        alternativa_correta: 1
      })

      questao.save!

      alternativa = Alternativa.new({questao_fechada_id: questao.id, alternativa: "Alternativa 1", correta: true})
      expect(alternativa).to be_valid
    end

    it "é invalido sem alternativa" do
      questao = QuestaoFechada.new({
        grupo_questao: "Grupo de Questão",
        titulo: "Título da Questão",
        enunciado: "Enunciado da Questão",
        total_alternativas: 4,
        alternativas_aluno: 3,
        alternativa_correta: 1
      })

      questao.save!

      alternativa = Alternativa.new({questao_fechada_id: questao.id, correta: true})
      expect(alternativa).to_not be_valid
    end


    it "é invalido sem informar se é correta ou não" do
      questao = QuestaoFechada.new({
        grupo_questao: "Grupo de Questão",
        titulo: "Título da Questão",
        enunciado: "Enunciado da Questão",
        total_alternativas: 4,
        alternativas_aluno: 3,
        alternativa_correta: 1
      })

      questao.save!

      alternativa = Alternativa.new({questao_fechada_id: questao.id, alternativa: "Alternativa 1"})
      expect(alternativa).to_not be_valid
    end


    it "é invalido sem questao_id" do
      questao = QuestaoFechada.new({
        grupo_questao: "Grupo de Questão",
        titulo: "Título da Questão",
        enunciado: "Enunciado da Questão",
        total_alternativas: 4,
        alternativas_aluno: 3,
        alternativa_correta: 1
      })

      questao.save!

      alternativa = Alternativa.new({alternativa: "Alternativa 1", correta: true})
      expect(alternativa).to_not be_valid
    end


end
