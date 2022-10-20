#language: pt

Funcionalidade: Listar todas as provas
  Como administrador
  Eu quero visualizar uma tabela com todas as provas no banco de dados

  Cenário: Listagem de provas cadastradas
    Dado que estou na página de cadastro de prova
    Quando preencho o campo "Disciplina" com "ACH2012"
    E clico em salvar prova
    Então ela deve ter sido salva no banco de dados
    E deverei ver a prova na tabela que lista todas as alunos