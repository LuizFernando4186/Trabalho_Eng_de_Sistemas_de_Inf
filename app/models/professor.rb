class Professor < ApplicationRecord
    validates :nome, presence: { message: "É obrigatório informar o nome!" }
    validates :email, presence: { message: "É obrigatório informar o email!" },format: { with: URI::MailTo::EMAIL_REGEXP,
        message: "Formato de e-mail inválido!" } 
    validates :nusp, presence: { message: "É obrigatório informar o nusp!" }
end
