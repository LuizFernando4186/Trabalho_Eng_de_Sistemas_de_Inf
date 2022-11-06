require 'rails_helper'

#primeiro falhe
#segundo fazer passar
#terceiro refatorar

RSpec.describe LoginController, :type => :controller do
    
    context "Logando com sucesso" do 
        let(:professor) { create(:professor) }
        it "espero logar com sucesso" do
            post :create, params: {nusp: professor.nusp }
            expect(flash[:notice]).to eq("Professor Logado com sucesso!.")
        end
    end

    context "Logando com sucesso" do 
        let(:aluno) { create(:aluno) }
        it "espero logar com sucesso" do
            post :create, params: {nusp: aluno.nusp }
            expect(flash[:notice]).to eq("Aluno Logado com sucesso!.")
        end
    end

    context "Logando sem sucesso" do 
        it "espero retornar um alerta" do
            post :create, params: {nusp: 11234 }
            expect(flash[:alert]).to eq("Nusp inválido!.")
        end
    end

    context "Destroy" do 
        it "espero deslogar o usuário" do
            delete :destroy
            expect(flash[:notice]).to eq("Logged out")
        end
    end


end