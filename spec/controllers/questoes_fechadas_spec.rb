require 'rails_helper'

RSpec.describe QuestaoFechada, :type => :controller do

    context "GET #index" do

        it "espero ter um array vazio" do
            get :index
            expect(assigns(:questao_fechadas)).to be_empty #verifica se a variavel e vazia
        end

        it "criando primeira questao_fechada" do
            create(:questao_fechada) #cria um questao_fechada usando o factory 
            get :index
            expect(assigns(:questoes_fechadas)).to_not be_empty 
        end

    end


    context "GET #show" do

        let(:questao_fechada) { create(:questao_fechada) }
        it "quando tem id" do
            get :show, params: { id: questao_fechada.id }
            expect(assigns(:questoes_fechadas)).to be_a(QuestaoFechada) 
        end

    end


    context "GET #new" do

        it "espero uma nova questao_fechada" do
            get :new
            expect(assigns(:questao_fechada)).to be_a(QuestaoFechada) 
            expect(assigns(:questao_fechada)).to be_a_new(QuestaoFechada) 
        end

    end


    context "POST #create" do

        let!(:params) {
            { titulo: 'Questao 1', enunciado: 'Enunciado da questao 1', grupo_questao: 'Grupo 1', tipo: 'Tipo 1' }
        }

        it "criar uma nova questao_fechada" do
            post :create, params: { questao_fechada: params }
            expect(flash[:notice]).to eq("Questao fechada criada com sucesso!.")
            expect(response).to redirect_to(action: :show, id: assigns(:questao_fechada).id)
        end

        it "não criou uma nova questao_fechada" do
            params = { titulo: 'Questao 1' }
            post :create, params: { questao_fechada: params }
            expect(flash[:notice]).to eq("Erro ao criar questao fechada!.")
            expect(response).to render_template("new")
        end

    end


    context "PUT #update" do

        let!(:questao_fechada){ create(:questao_fechada) }

        it "espero atualizar os dados da questao_fechada" do
            params = { titulo: 'Questao 1', enunciado: 'Enunciado da questao 1', grupo_questao: 'Grupo 1', tipo: 'Tipo 1' }
            put :update, params: { id: questao_fechada.id, questao_fechada: params }
            questao_fechada.reload
            expect(flash[:notice]).to eq("Questao fechada atualizada com sucesso!.")
            expect(response).to redirect_to(action: :show, id: questao_fechada.id)
        end

        it "não atualizar os dados da questao_fechada" do
            params = { titulo: '' }
            put :update, params: { id: questao_fechada.id, questao_fechada: params }
            questao_fechada.reload
            expect(flash[:notice]).to eq("Erro ao atualizar questao fechada!.")
            expect(response).to render_template("edit")
        end

    end


    context "DELETE #destroy" do

        let!(:questao_fechada){ create(:questao_fechada) }

        it "espero deletar a questao_fechada" do
            delete :destroy, params: { id: questao_fechada.id }
            expect(flash[:notice]).to eq("Questao fechada deletada com sucesso!.")
            expect(response).to redirect_to(action: :index)
        end
        
    end

end