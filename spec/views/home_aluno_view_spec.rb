require 'rails_helper'

RSpec.describe HomeAlunoController, :type => :controller do

    context "Página no ar" do
    let!(:aluno){ create(:aluno) }
        it "espero retornar sucesso e renderizar a página index" do
            session[:user_id] = aluno.id
            get :index
            expect(response).to have_http_status(200) #espero que retorne 200
            expect(response).to render_template(:index)
        end
    end
end