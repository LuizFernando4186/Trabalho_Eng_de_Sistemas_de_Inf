class Aluno < ApplicationRecord
  validates :nome, presence: { message: "É obrigatório informar o nome!" }
  validates :email, presence: { message: "É obrigatório informar o email!" },format: { with: URI::MailTo::EMAIL_REGEXP,
      message: "Formato de e-mail inválido!" } 
end