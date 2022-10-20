class ProfessoresController < ApplicationController
  before_action :set_professore, only: %i[ show edit update destroy ]

  # GET /professores or /professores.json
  def index
    @professores = Professore.all
  end

  # GET /professores/1 or /professores/1.json
  def show
  end

  # GET /professores/new
  def new
    @professore = Professore.new
  end

  # GET /professores/1/edit
  def edit
  end

  # POST /professores or /professores.json
  def create
    @professore = Professore.new(professore_params)

    respond_to do |format|
      if @professore.save
        format.html { redirect_to professore_url(@professore), notice: "Professore was successfully created." }
        format.json { render :show, status: :created, location: @professore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @professore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professores/1 or /professores/1.json
  def update
    respond_to do |format|
      if @professore.update(professore_params)
        format.html { redirect_to professore_url(@professore), notice: "Professore was successfully updated." }
        format.json { render :show, status: :ok, location: @professore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @professore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professores/1 or /professores/1.json
  def destroy
    @professore.destroy

    respond_to do |format|
      format.html { redirect_to professores_url, notice: "Professore was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professore
      @professore = Professore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def professore_params
      params.require(:professore).permit(:nome, :email, :nusp)
    end
end
