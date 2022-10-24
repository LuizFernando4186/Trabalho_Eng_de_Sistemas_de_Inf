class LoginController < ApplicationController
 
  def index
  end

  def create
    @professor = Professor.find_by(nusp: params[:nusp])
    @aluno = Aluno.find_by(nusp: params[:nusp])

    if @professor.present? or @aluno.present?
      redirect_to root_path, notice: "Logado com sucesso!."
    else 
      flash[:alert] = "Nusp inválido!."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out"
  end

end