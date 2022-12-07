#encoding: utf-8
#language: pt

Funcionalidade: Cadastrar questões fechadas
	Como professor
  Para que eu possa realizar uma prova de uma disciplina
  Eu quero cadastrar uma questão no banco de questões

	Cenário: Cadastrar uma questão de múltipla escolha corretamente
		Dado que eu estou na tela de cadastro de uma questão fechada
		Quando preencho o campo "Grupo da Questão" com "ESI"
		E preencho o campo "Título" com "Questão 2"
		E preencho o campo "Enunciado" com "O que faz o Cucumber?"
		E preencho o campo "Total de Alternativas" com "5"
		E preencho o campo "Alternativas por Aluno" com "4"
		E preencho o campo "Alternativa Correta" com "1"
		E clico em "Salvar"
		Então ela deveria ter sido salva no banco de dados

	Cenário: Cadastrar uma questão de múltipla escolha sem informar a alternativa correta
		Dado que eu estou na tela de cadastro de uma questão fechada
		Quando preencho o campo "Grupo da Questão" com "ESI"
		E preencho o campo "Título" com "Questão 2"
		E preencho o campo "Enunciado" com "O que faz o Cucumber?"
		E preencho o campo "Total de Alternativas" com "5"
		E preencho o campo "Alternativas por Aluno" com "4"
		E clico em "Salvar"
		Então deverei ver uma mensagem de erro 
