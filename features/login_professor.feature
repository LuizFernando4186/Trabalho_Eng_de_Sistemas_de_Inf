#encoding: utf-8
#language: pt

Funcionalidade: Login do Professor
   Objetivo é buscar os dados do professor no banco de dados 
   E verificar se existe ou não, assim pode entrar no sistema

Cenário: Professor entrar no sistema
   Dado que estou na página de login
   Quando preencho o campo "Nusp" com 11740300
   E clico em entrar
   Então o professor deve ser direcionado para a tela de home