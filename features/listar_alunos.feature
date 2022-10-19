#language: pt

Funcionalidade: Listar todos os alunos
  Como administrador
  Eu quero visualizar uma tabela com todos os alunos no banco de dados

  Cenário: Listagem de alunos cadastrados
    Dado que estou na página de cadastro de aluno
    Quando preencho o campo "Nome" com "Miguel Vasconcelos"
    Quando preencho o campo "Email" com "miguel.vasconcelos@usp.br"
    Quando preencho o campo "Nusp" com "1073381"
    E clico em salvar aluno
    Então ele deve ter sido salvo no banco de dados
    E deverei ver o aluno na tabela que lista todos os alunos