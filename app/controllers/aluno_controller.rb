class AlunoController < ApplicationController

  def create
    @aluno = Aluno.new({ :name => "Jose Valim", :email => "teste@gmail.com", :nusp => 10773381})
    puts @aluno.inspect
    @aluno.save
  end


  def list
    alunos = Aluno.all

    puts alunos.inspect
    render json: alunos
  end

end
