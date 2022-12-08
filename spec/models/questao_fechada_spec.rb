require 'rails_helper'

RSpec.describe QuestaoFechada, type: :model do
  
  it 'valida questao fechada sem grupo de questao' do
    questao = QuestaoFechada.new
    questao.titulo = 'Título da Questão'
    questao.enunciado = 'Enunciado da Questão'
    questao.total_alternativas = 4
    questao.alternativas_aluno = 3
    questao.alternativa_correta = 1
    
    expect(questao).to_not be_valid
  end

  it 'valida questao fechada sem titulo' do
    questao = QuestaoFechada.new
    questao.grupo_questao = 'Grupo de Questão'
    questao.enunciado = 'Enunciado da Questão'
    questao.total_alternativas = 4
    questao.alternativas_aluno = 3
    questao.alternativa_correta = 1
    
    expect(questao).to_not be_valid
  end


  it 'valida questao fechada sem enunciado' do
    questao = QuestaoFechada.new
    questao.grupo_questao = 'Grupo de Questão'
    questao.titulo = 'Título da Questão'
    questao.total_alternativas = 4
    questao.alternativas_aluno = 3
    questao.alternativa_correta = 1

    expect(questao).to_not be_valid
  end


  it 'valida questao fechada sem informar total de alternativas' do
    questao = QuestaoFechada.new
    questao.grupo_questao = 'Grupo de Questão'
    questao.titulo = 'Título da Questão'
    questao.enunciado = 'Enunciado da Questão'
    questao.alternativas_aluno = 3
    questao.alternativa_correta = 1
    
    expect(questao).to_not be_valid
  end


  it 'valida questao fechada sem informar total de alternativas por aluno' do
    questao = QuestaoFechada.new
    questao.grupo_questao = 'Grupo de Questão'
    questao.titulo = 'Título da Questão'
    questao.enunciado = 'Enunciado da Questão'
    questao.total_alternativas = 4
    questao.alternativa_correta = 1
    
    expect(questao).to_not be_valid
  end


  it 'valida questao fechada sem informar alternativa correta' do
    questao = QuestaoFechada.new
    questao.grupo_questao = 'Grupo de Questão'
    questao.titulo = 'Título da Questão'
    questao.enunciado = 'Enunciado da Questão'
    questao.total_alternativas = 4
    questao.alternativas_aluno = 3
    
    expect(questao).to_not be_valid
  end


  it 'valida questao fechada com todos os atributos' do
    questao = QuestaoFechada.new
    questao.grupo_questao = 'Grupo de Questão'
    questao.titulo = 'Título da Questão'
    questao.enunciado = 'Enunciado da Questão'
    questao.total_alternativas = 4
    questao.alternativas_aluno = 3
    questao.alternativa_correta = 1
    
    expect(questao).to be_valid
  end

  
end
