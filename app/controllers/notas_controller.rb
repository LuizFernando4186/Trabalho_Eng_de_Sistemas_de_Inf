class NotasController < ApplicationController
  def all
    @notas = Notas.includes(:prova).all
  end

  def new
    @nota = Notas.new
  end

  def create
    @nota = Notas.new(params.require(:nota).permit(:nota, :prova_id))
    if @nota.save
      redirect_to action: 'show', id: @nota.id
    else
      render :new, status: :unprocessable_entity, content_type: "text/html"
      headers["Content-Type"] = "text/html"
    end
  end

  def show
    @nota = Notas.find(params[:id])
  end
end
