#encoding: utf-8
#language: pt

Funcionalidade: Login do Aluno
   Objetivo é buscar os dados do aluno no banco de dados 
   E verificar se existe ou não, assim pode entrar no sistema

Cenário: Aluno entrar no sistema
   Dado que estou na página de login
   Quando preencho o campo "Nusp" com 11840300
   E clico em entrar
   Então o aluno deve ser direcionado para a tela de home