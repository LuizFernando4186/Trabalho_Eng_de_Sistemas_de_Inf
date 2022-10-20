class ProfessorsController < ApplicationController
  before_action :set_professor, only: [:show, :update, :edit, :destroy] 

  #/professors/index - imprime tudo
  def index
    @professors = Professor.all
  end

  #/professors/1 ou /professors/1.json - imprime um professor
  def show
  end

  # /professors/new - cria um professor
  def new
    @professor = Professor.new
  end

  # GET /professors/1/edit
  def edit
  end

  # POST 
  def create
    @professor = Professor.new(professor_params)

    if @professor.save
      flash[:notice] = "Professor criado com sucesso!."
      redirect_to action: :show, id: @professor.id

    else
      flash[:notice] = "Erro ao criar professor!."
      render :new
    end
  end

  # atualizar professor
  def update
    if @professor.update(professor_params)
      flash[:notice] = "Professor atualizado com sucesso!."
      redirect_to action: :show, id: @professor.id
    else
      flash[:notice] = "Professor não atualizado com sucesso!."
      render :edit
    end
  end

  # DELETE 
  def destroy
    @professor.destroy

    flash[:notice] = "Professor excluído com sucesso!."
    redirect_to action: :index
  end

  private
    def set_professor
      #dentro de Professor tem varios metodos e neste caso tem o find
      #busca o professor e coloca na variavel @professor
      @professor = Professor.find(params[:id])
    end

    def professor_params
      #tratar os parametros, pedindo o nome, email e nusp
      params.require(:professor).permit(:nome, :email, :nusp)
    end
end