#encoding: utf-8
#language: pt

Funcionalidade: Cadastrar professores
   Objetivo de cadastrar os professores no banco de dados
   Para criar as provas

Cenário: Cadastro de professor com sucesso
   Dado que estou na página de cadastro de professor
   Quando preencho o campo "Nome" com "Marcos Antônio"
   Quando preencho o campo "Email" com "marcos@usp.br"
   Quando preencho o campo "Nusp" com 11840300
   E clico em salvar professor
   Então o professor deve ter sido salvo no banco de dados

Cenário: Cadastro de professor com erro - sem nome
   Dado que estou na página de cadastro de professor
   Quando preencho o campo "Email" com "marcos@usp.br"
   E deixo o campo "Nome" vazio
   E clico em salvar professor
   Então deverei ver a mensagem de erro "É obrigatório informar o nome!"

Cenário: Cadastro de professor com erro - sem e-mail
   Dado que estou na página de cadastro de professor
   Quando preencho o campo "Nome" com "Marcos Antônio"
   E deixo o campo "Email" vazio
   E clico em salvar professor
   Então deverei ver a mensagem de erro "É obrigatório informar o email!"

Cenário: Cadastro de professor com erro - sem nusp
   Dado que estou na página de cadastro de professor
   Quando preencho o campo "Nome" com "Marcos Antônio"
   Quando preencho o campo "Email" com "marcos@usp.br"
   E deixo o campo "Nusp" vazio
   E clico em salvar professor
   Então deverei ver a mensagem de erro "É obrigatório informar o nusp!"

Cenário: Cadastro de professor com erro - e-mail inválido
   Dado que estou na página de cadastro de professor
   Quando preencho o campo "Nome" com "Marcos Antônio"
   E preencho o campo "Email" com "a!1ç....,,,´/ ? @a"
   E clico em salvar professor
   Então deverei ver a mensagem de erro "Formato de e-mail inválido!"