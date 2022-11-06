class LoginController < ApplicationController
 
  def index
  end

  def create
    @professor = Professor.find_by(nusp: params[:nusp])
    @aluno = Aluno.find_by(nusp: params[:nusp])

    if @professor.present? 
      redirect_to home_professor_path, notice: "Professor Logado com sucesso!."
    elsif @aluno.present?
      redirect_to home_aluno_path, notice: "Aluno Logado com sucesso!."
    else 
      flash[:alert] = "Nusp inválido!."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out"
  end

end