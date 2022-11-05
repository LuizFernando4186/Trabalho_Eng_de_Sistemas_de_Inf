class Notas < ApplicationRecord
  validates :nota, presence: { message: "É obrigatório informar a nota!" }
  validates :prova_id, presence: { message: "É obrigatório informar a prova!" }
  belongs_to :prova
end
