require 'rails_helper'

#primeiro falhe
#segundo fazer passar
#terceiro refatorar

RSpec.describe LoginController, :type => :controller do

    context "Página no ar" do
        it "espero retornar sucesso e renderizar a página index" do
            get :index
            expect(response).to have_http_status(200) #espero que retorne 200
            expect(response).to render_template(:index)
        end
    end
    
    context "Logando com sucesso" do 
        let(:professor) { create(:professor) }
        it "espero logar com sucesso" do
            post :create, params: {nusp: professor.nusp }
            expect(flash[:notice]).to eq("Logado com sucesso!.")
        end
    end

    context "Logando sem sucesso" do 
        it "espero retornar um alerta" do
            post :create, params: {nusp: 11234 }
            expect(flash[:alert]).to eq("Nusp inválido!.")
        end
    end


end