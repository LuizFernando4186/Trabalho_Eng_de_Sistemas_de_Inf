#language: pt

Funcionalidade: Cadastrar questões fechadas
	Como professor
  Para que eu possa realizar uma prova de uma disciplina
  Eu quero cadastrar uma questão no banco de questões

	Cenário: Cadastrar uma questão de múltipla escolha corretamente
		Dado que eu estou na tela de cadastro de uma questão fechada
		Quando preencho o campo da questão fechada "Grupo questao" com "ESI"
		E preencho o campo da questão fechada "Titulo" com "Questão 1"
		E preencho o campo da questão fechada "Enunciado" com "O que faz o Cucumber?"
		E preencho o campo da questão fechada "Total alternativas" com "5"
		E preencho o campo da questão fechada "Alternativas aluno" com "4"
		E preencho o campo da questão fechada "Alternativa correta" com "1"
		E clico em Salvar para salvar a questão fechada
		Então ela deveria ter sido salva no banco de dados

	Cenário: Cadastrar uma questão de múltipla escolha sem informar a alternativa correta
		Dado que eu estou na tela de cadastro de uma questão fechada
		Quando preencho o campo da questão fechada "Grupo questao" com "ESI"
		E preencho o campo da questão fechada "Titulo" com "Questão 2"
		E preencho o campo da questão fechada "Enunciado" com "O que faz o Cucumber?"
		E preencho o campo da questão fechada "Total alternativas" com "5"
		E preencho o campo da questão fechada "Alternativas aluno" com "4"
		E clico em Salvar para salvar a questão fechada
		Então deverei ver uma mensagem de erro 
