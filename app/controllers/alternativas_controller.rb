class AlternativasController < ApplicationController
  before_action :set_alternativa, only: %i[ show edit update destroy ]

  # GET /alternativas or /alternativas.json
  def index
    @alternativas = Alternativa.all
  end

  # GET /alternativas/1 or /alternativas/1.json
  def show
  end

  # GET /alternativas/new
  def new
    @alternativa = Alternativa.new
  end

  # GET /alternativas/1/edit
  def edit
  end

  # POST /alternativas or /alternativas.json
  def create
    @alternativa = Alternativa.new(alternativa_params)

    respond_to do |format|
      if @alternativa.save
        format.html { redirect_to alternativa_url(@alternativa), notice: "Alternativa criada com sucesso." }
        format.json { render :show, status: :created, location: @alternativa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alternativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alternativas/1 or /alternativas/1.json
  def update
    respond_to do |format|
      if @alternativa.update(alternativa_params)
        format.html { redirect_to alternativa_url(@alternativa), notice: "Alternativa was successfully updated." }
        format.json { render :show, status: :ok, location: @alternativa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alternativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alternativas/1 or /alternativas/1.json
  def destroy
    @alternativa.destroy

    respond_to do |format|
      format.html { redirect_to alternativas_url, notice: "Alternativa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alternativa
      @alternativa = Alternativa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alternativa_params
      params.require(:alternativa).permit(:alternativa, :correta, :questao_fechada_id)
    end
end
