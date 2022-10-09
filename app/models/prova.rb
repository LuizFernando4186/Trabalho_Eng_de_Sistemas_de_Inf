class Prova < ApplicationRecord
  validates :disciplina, presence: { message: "É obrigatório informar a disciplina!" }
end
