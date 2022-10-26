class Alternativa < ApplicationRecord
  
  before_action :get_questao, only: [:new, :create, :edit, :update, :destroy]
  belongs_to :questao_fechada

  validates :alternativa, presence: { message: "É obrigatório informar a descrição da alternativa!" }
  validates :correta, presence: { message: "É obrigatório informar se a alternativa é correta ou não!" }


  private

    def get_questao
      @questao_fechada = QuestaoFechada.find(params[:questao_id])
    end

end
