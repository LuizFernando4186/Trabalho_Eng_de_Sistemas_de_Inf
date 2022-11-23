require 'rails_helper'

RSpec.describe Questao, type: :model do
  
  it 'valida questao aberta sem titulo' do
    questao = Questao.new
    questao.tipo = 'aberta'
    questao.enunciado = 'Qual o nome do curso?'
    expect(questao).to_not be_valid
  end

  it 'valida questao aberta sem enunciado' do
    questao = Questao.new
    questao.tipo = 'aberta'
    questao.titulo = 'Nome do curso'
    expect(questao).to_not be_valid
  end

  it 'valida questao aberta sem grupo de questao' do
    questao = Questao.new
    questao.tipo = 'aberta'
    questao.titulo = 'Nome do curso'
    questao.enunciado = 'Qual o nome do curso?'    
    expect(questao).to_not be_valid
  end

  it 'valida questao aberta com titulo, enunciado e grupo de questao' do
    questao = Questao.new
    questao.tipo = 'aberta'
    questao.titulo = 'Nome do curso'
    questao.enunciado = 'Qual o nome do curso?'    
    questao.grupo = 'Iniciante'
    expect(questao).to be_valid
  end


  it 'valida questao fechada sem titulo' do
    questao = Questao.new
    questao.tipo = 'fechada'
    questao.enunciado = 'Qual o nome do curso?'
    expect(questao).to_not be_valid
  end

  it 'valida questao fechada sem enunciado' do
    questao = Questao.new
    questao.tipo = 'fechada'
    questao.titulo = 'Nome do curso'
    expect(questao).to_not be_valid
  end

  it 'valida questao fechada sem grupo de questao' do
    questao = Questao.new
    questao.tipo = 'fechada'
    questao.titulo = 'Nome do curso'
    questao.enunciado = 'Qual o nome do curso?'    
    expect(questao).to_not be_valid
  end

  it 'valida questao fechada sem informar total de alternativas' do
    questao = Questao.new
    questao.tipo = 'fechada'
    questao.titulo = 'Nome do curso'
    questao.enunciado = 'Qual o nome do curso?'    
    questao.grupo = 'Iniciante'
    expect(questao).to_not be_valid
  end

  it 'valida questao fechada sem informar total de alternativas por aluno' do
    questao = Questao.new
    questao.tipo = 'fechada'
    questao.titulo = 'Nome do curso'
    questao.enunciado = 'Qual o nome do curso?'    
    questao.grupo = 'Iniciante'
    questao.total_alternativas = 5
    expect(questao).to_not be_valid
  end


  
end
