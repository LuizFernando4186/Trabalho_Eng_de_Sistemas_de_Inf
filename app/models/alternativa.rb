class Alternativa < ApplicationRecord
  
  before_commit :get_questao, only: [:new, :create, :edit, :update, :destroy]
  belongs_to :questao_fechada

  validates :alternativa, presence: { message: "É obrigatório informar a descrição da alternativa!" }
  validates :correta, presence: { message: "É obrigatório informar se a alternativa é correta ou não!" }
  validates :questao_fechada_id, presence: { message: "É obrigatório informar a questão!" }

  private

    def get_questao
      @questao_fechada = QuestaoFechada.find(params[:questao_fechada_id])
    end

end
