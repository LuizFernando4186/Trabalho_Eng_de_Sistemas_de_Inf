class AlunosController < ApplicationController
  def new
    @aluno = Aluno.new
  end

  def create
    @aluno = Aluno.new(aluno_params)
    if @aluno.save
      redirect_to action: 'show', id: @aluno.id
    else
      render :new, status: :unprocessable_entity, content_type: "text/html"
      headers["Content-Type"] = "text/html"
    end
  end

  def show
    @aluno = Aluno.find(params[:id])
  end

  private
  def aluno_params
    params.require(:aluno).permit(:nome, :email)
  end
end
