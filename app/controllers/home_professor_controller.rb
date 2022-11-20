class HomeProfessorController < ApplicationController
  def index
    if session[:user_id]
      @professor = Professor.find(session[:user_id])
    end
  end
end
