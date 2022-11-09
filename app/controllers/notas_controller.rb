class NotasController < ApplicationController
  def all
    @notas = Notas.includes(:prova).all
  end
end
