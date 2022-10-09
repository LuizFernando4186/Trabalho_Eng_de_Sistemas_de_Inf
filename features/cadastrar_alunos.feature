#language: pt

Funcionalidade: Cadastrar alunos
  Como administrador
  Para que eu possa registrar o histórico escolar do aluno
  Eu quero cadastrar um aluno no banco de dados

  Cenário: Cadastro de aluno com sucesso
    Dado que estou na página de cadastro de aluno
    Quando preencho o campo "Nome" com "Miguel Vasconcelos"
    Quando preencho o campo "Email" com "miguel.vasconcelos@usp.br"
    E clico em salvar aluno
    Então ele deve ter sido salvo no banco de dados
    E deverei ver o aluno na página de listagem de alunos

  Cenário: Cadastro de aluno com erro - sem nome
    Dado que estou na página de cadastro de aluno
    Quando preencho o campo "Email" com "miguel.vasconcelos@usp.br"
    E deixo o campo "Nome" vazio
    E clico em salvar aluno
    Então deverei ver a mensagem de erro "É obrigatório informar o nome!"

  Cenário: Cadastro de aluno com erro - sem e-mail
    Dado que estou na página de cadastro de aluno
    Quando preencho o campo "Nome" com "Miguel Vasconcelos"
    E deixo o campo "Email" vazio
    E clico em salvar aluno
    Então deverei ver a mensagem de erro "É obrigatório informar o email!"

  Cenário: Cadastro de aluno com erro - e-mail inválido
    Dado que estou na página de cadastro de aluno
    Quando preencho o campo "Nome" com "Miguel Vasconcelos"
    E preencho o campo "Email" com "a!1ç....,,,´/ ? @a"
    E clico em salvar aluno
    Então deverei ver a mensagem de erro "Formato de e-mail inválido!"