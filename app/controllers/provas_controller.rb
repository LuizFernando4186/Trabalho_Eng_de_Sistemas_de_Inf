class ProvasController < ApplicationController
  def new
    @prova = Prova.new
  end

  def create
    @prova = Prova.new(prova_params)
    if @prova.save
      redirect_to action: 'show', id: @prova.id
    else
      render :new, status: :unprocessable_entity, content_type: "text/html"
      headers["Content-Type"] = "text/html"
    end
  end

  def show
    @prova = Prova.find(params[:id])
  end

  private
  def prova_params
    params.require(:prova).permit(:disciplina)
  end

end