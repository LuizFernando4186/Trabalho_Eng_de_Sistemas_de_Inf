class AlunosController < ApplicationController
  def new
    @aluno = Aluno.new
  end

  def create
    @aluno = Aluno.new(aluno_params)
    if @aluno.save
      flash[:notice] = "Aluno criado com sucesso!."
      redirect_to action: 'show', id: @aluno.id
    else
      flash[:notice] = "Erro ao criar aluno!."
      render :new, status: :unprocessable_entity, content_type: "text/html"
      headers["Content-Type"] = "text/html"
    end
  end

  def all
    @alunos = Aluno.all
  end

  def show
    @aluno = Aluno.find(params[:id])
  end
  
  def filter
    email = params[:email]
    nome = params[:nome]

    case [email, nome]
    in [nil, nil]
      @aluno = Aluno.first()

    in [e, nil]
      @aluno = Aluno.find_by(email: e)

    in [nil, n]
      @aluno = Aluno.find_by(nome: n)

    in [e,n]
      @aluno = Aluno.find_by(email: e, nome: n)
    end

    redirect_to action: 'show', id: @aluno.id
  end

  private
  def aluno_params
    params.require(:aluno).permit(:nome, :email, :nusp)
  end
end
