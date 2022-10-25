class Questao < ApplicationRecord

    validates :grupo_questao, presence: { message: "É obrigatório informar o grupo da questão!" }
    validates :titulo, presence: { message: "É obrigatório informar o título da questão!" }
    validates :enunciado, presence: { message: "É obrigatório informar o enunciado da questão!" }

end
