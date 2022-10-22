#encoding: utf-8
#language: pt

Funcionalidade: Fazer Login
   Objetivo é buscar os dados da pessoa no banco de dados 
   E verificar se existe ou não, assim pode entrar no sistema

Cenário: Fazer login com sucesso
   Dado que eu tenho um usuário
   |nusp| 4445|
   Quando eu faço login
   Então devo ser direcionado para a área de home