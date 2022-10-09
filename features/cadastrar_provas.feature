#language: pt

Funcionalidade: Cadastrar provas
Como administrador
Para que eu possa realizar uma prova de uma disciplina
Eu quero cadastrar uma prova no banco de dados

Cenário: Cadastro de prova com sucesso
Dado que estou na página de cadastro de prova
Quando preencho o campo "Disciplina" da prova com "ACH2012"
E clico em salvar prova
Então ela deve ter sido salva no banco de dados
E deverei ver a prova na página de listagem de provas

Cenário: Cadastro de prova com erro - sem disciplina
Dado que estou na página de cadastro de prova
Quando deixo o campo "Disciplina" da prova vazio
E clico em salvar prova
Então deverei ver a mensagem de erro "É obrigatório informar a disciplina!" na pagina da prova