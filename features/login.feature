#encoding: utf-8
#language: pt

Funcionalidade: Fazer Login
   Objetivo é buscar os dados da pessoa no banco de dados 
   E verificar se existe ou não, assim pode entrar no sistema

Cenário: Não permitir login sem cadastro
   Dado que eu tenho um usuário sem cadastro
   |nusp| 11840300|
   Quando eu faço login
   Então deve permanecer na tela de login


Cenário: Professor realizar o login com sucesso
   Dado que estou na página de cadastro de professor
   Quando preencho o campo "Nome" com "Marcos Antônio"
   Quando preencho o campo "Email" com "marcos@usp.br"
   Quando preencho o campo "Nusp" com 11840300
   E clico em salvar professor
   Então o professor deve ter sido salvo no banco de dados
   E vou para a página de login
   Dado que eu tenho um usuário com cadastro
   |nusp| 11840300|
   Quando eu faço login
   Então devo ser direcionado para a área de home

Cenário: Aluno realizar o login com sucesso
   Dado que estou na página de cadastro de aluno
   Quando preencho o campo "Nome" com "Miguel Vasconcelos"
   Quando preencho o campo "Email" com "miguel.vasconcelos@usp.br"
   Quando preencho o campo "Nusp" com 11847700
   E clico em salvar aluno
   Então ele deve ter sido salvo no banco de dados
   E vou para a página de login
   Dado que eu tenho um usuário com cadastro
   |nusp| 11847700|
   Quando eu faço login
   Então devo ser direcionado para a área de home