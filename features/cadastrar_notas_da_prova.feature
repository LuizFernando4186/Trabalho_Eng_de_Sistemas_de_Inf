#language: pt

Funcionalidade: Cadastrar notas de provas
Como administrador
Para que eu possa dar nota para as provas dos alunos de uma disciplina
Eu quero cadastrar uma nota de prova no banco de dados

Cenário: Cadastro de nota de prova com sucesso
Dado que estou na página de cadastro de notas de prova
Quando preencho o campo "Prova" da nota de prova com "1"
Quando preencho o campo "Nota" da nota de prova com "5.6"
E clico em salvar nota de prova
Então deverei ver a nota de prova na página de listagem de notas de provas