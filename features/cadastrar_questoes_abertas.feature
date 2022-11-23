#language pt

Funcionalidade: Cadastrar questões
Como professor
Para que eu possa realizar uma prova de uma disciplina
Eu quero cadastrar uma questão no banco de questões

Cenário: Cadastrar uma questão aberta
Dado que eu estou na tela de cadastro de uma questão aberta
Quando preencho o campo "Grupo da Questão" com "ESI"
E preencho o campo "Título" com "Questão 1"
E preencho o campo "Enunciado" com "O que faz o Cucumber?"
E clico em "Salvar"
Então ela deveria ter sido salva no banco de dados
E deveria aparecer na listagem de questões abertas