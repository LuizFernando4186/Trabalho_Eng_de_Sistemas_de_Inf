require 'rails_helper'

#primeiro falhe
#segundo fazer passar
#terceiro refatorar

RSpec.describe AlunosController, :type => :controller do

      context "Add Aluno" do 
      let!(:params) {
          { nome: 'aluno', email: 'aluno@usp.br', nusp: 12456554 }
      }
      it "criar um novo aluno" do
          post :create, params: { aluno: params }
          expect(flash[:notice]).to eq("Aluno criado com sucesso!.")
          expect(response).to redirect_to(action: :show, id: assigns(:aluno).id)
      end

      it "não criou um novo aluno" do
          params = { nome: 'aluno' }
          post :create, params: { aluno: params }
          expect(flash[:notice]).to eq("Erro ao criar aluno!.")
          expect(response).to render_template("new")
      end
    end
end