class Prova < ApplicationRecord
    validates :tipo, presence: { message: "É obrigatório informar o tipo!" }
    validates :nusp, presence: { message: "É obrigatório informar o nusp!" }
end