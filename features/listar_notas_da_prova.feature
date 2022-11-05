#language: pt

Funcionalidade: Listar todas as notas de prova
  Como administrador
  Eu quero visualizar uma tabela com todos as notas de prova no banco de dados

  Cenário: Listagem de notas de prova cadastrados
    Dado que estou na página de listagem de notas de prova
    Então deverei ver a lista de notas, com disciplina e nota de cada prova