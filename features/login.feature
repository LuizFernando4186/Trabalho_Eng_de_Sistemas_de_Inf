#encoding: utf-8
#language: pt

Funcionalidade: Fazer Login
   Objetivo é buscar os dados da pessoa no banco de dados 
   E verificar se existe ou não, assim pode entrar no sistema

Cenário: Não permitir login sem cadastro
   Dado que eu tenho um usuário sem cadastro
   |nusp| 11840300|
   Quando eu faço login
   Então devo ser direcionado para a área de home


Cenário: Fazer login com sucesso
   Dado que eu tenho um usuário com cadastro
   |nusp| 11840300|
   Quando eu faço login
   Então devo ser direcionado para a área de home