require 'rails_helper'

RSpec.describe AlunosController, :type => :controller do

    context "GET #all" do
        it "espero retornar sucesso e renderizar a página all" do
        get :all
        expect(response).to have_http_status(200) #espero que retorne 200
        expect(response).to render_template(:all)
        end
    end
end