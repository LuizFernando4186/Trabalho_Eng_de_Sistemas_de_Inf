require 'rails_helper'

RSpec.describe HomeProfessorController, :type => :controller do

    context "Página no ar" do
    let!(:professor){ create(:professor) }
        it "espero retornar sucesso e renderizar a página index" do
            session[:user_id] = professor.id
            get :index
            expect(response).to have_http_status(200) #espero que retorne 200
            expect(response).to render_template(:index)
        end
    end
end