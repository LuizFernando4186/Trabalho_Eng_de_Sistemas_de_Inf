class QuestoesFechadasController < ApplicationController
  before_action :set_questao, only: [:show, :edit, :update, :destroy]

  # GET /questaos or /questaos.json
  def index
    @questoes_fechadas = QuestaoFechada.all
  end

  # GET /questaos/1 or /questaos/1.json
  def show
  end

  # GET /questaos/new
  def new
    @questao_fechada = QuestaoFechada.new
  end

  # GET /questaos/1/edit
  def edit
  end

  # POST /questaos or /questaos.json
  def create
    @questao_fechada = QuestaoFechada.new(questao_fechada_params)

    respond_to do |format|
      if @questao_fechada.save
        format.html { redirect_to questao_fechada_url(@questao_fechada) }
        format.json { render :show, status: :created, location: @questao_fechada }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @questao_fechada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questaos/1 or /questaos/1.json
  def update
    respond_to do |format|
      if @questao_fechada.update(questao_fechada_params)
        format.html { redirect_to questao_fechada_url(@questao_fechada), notice: "Questao fechada atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @questao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @questao_fechada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questaos/1 or /questaos/1.json
  def destroy
    @questao_fechada.destroy

    respond_to do |format|
      format.html { redirect_to questoes_fechadas_url, notice: "Questao fechada apagada com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questao
      @questao_fechada = QuestaoFechada.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def questao_fechada_params
      puts "Carregando parametros... "
      puts params
      params.permit(:grupo_questao, :titulo, :enunciado, :total_alternativas, :alternativas_aluno, :alternativa_correta)
      puts "Parametros carregados"
    end
end
