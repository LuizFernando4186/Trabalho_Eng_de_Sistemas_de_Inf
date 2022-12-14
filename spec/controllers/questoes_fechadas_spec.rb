require 'rails_helper'

RSpec.describe QuestoesFechadasController, :type => :controller do

    context "GET #index" do

        it "espero ter um array vazio" do
            get :index
            expect(assigns(:questoes_fechadas)).to be_empty #verifica se a variavel e vazia
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
                expect(assigns(:questao_fechada)).to be_a(QuestaoFechada) 
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
            { grupo_questao: 'Grupo 11', titulo: 'Meu Titulo 11', enunciado: 'Meu enunciado 11', total_alternativas: 4, alternativas_aluno: 3, alternativa_correta: 1 }
        }

        it "não criou uma nova questao_fechada" do
            params = { titulo: 'Questao 1' }
            post :create, params: { questao_fechada: params }
            expect(response).to render_template("new")
        end

    end


    context "DELETE #destroy" do

        let!(:questao_fechada){ create(:questao_fechada) }

        it "espero deletar a questao_fechada" do
            delete :destroy, params: { id: questao_fechada.id }
            expect(flash[:notice]).to eq("Questao fechada apagada com sucesso.")
            expect(response).to redirect_to(action: :index)
        end
        
    end

end