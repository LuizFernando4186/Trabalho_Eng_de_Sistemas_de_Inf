class Prova < ApplicationRecord
  validates :disciplina, presence: { message: "É obrigatório informar a disciplina!" }
  #validates :nusp, presence: { message: "É obrigatório informar o nusp!" }
end
