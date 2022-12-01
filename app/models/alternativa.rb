class Alternativa < ApplicationRecord
  
  belongs_to :questao_fechada

  validates :alternativa, presence: { message: "É obrigatório informar a descrição da alternativa!" }
  validates :correta, presence: { message: "É obrigatório informar se a alternativa é correta ou não!" }
  validates :questao_fechada_id, presence: { message: "É obrigatório informar a questão!" }

  private

end
