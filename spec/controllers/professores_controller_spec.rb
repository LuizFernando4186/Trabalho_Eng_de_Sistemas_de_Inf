require 'rails_helper'

#primeiro falhe
#segundo fazer passar
#terceiro refatorar

RSpec.describe ProfessorsController, :type => :controller do

    context "GET #index" do
        it "espero retornar sucesso e renderizar a página index" do
            get :index
            expect(response).to have_http_status(200) #espero que retorne 200
            expect(response).to render_template(:index)
        end

        it "espero ter um array vazio" do
            get :index
            expect(assigns(:professors)).to be_empty #verifica se a variavel e vazia
        end

        it "criando primeiro professor" do
            create(:professor) #cria um professor usando o factory 
            get :index
            expect(assigns(:professors)).to_not be_empty 
        end
    end

    context "GET #show" do 
        let(:professor) { create(:professor) }
        it "espero retornar sucesso e renderize a página editar" do
        get :show, params: {id: professor.id }
        expect(response).to have_http_status(200) #espero que retorne 200
        expect(response).to render_template(:show)
        end

        it "quando tem id" do
            get :show, params: { id: professor.id }
            expect(assigns(:professor)).to be_a(Professor) 
        end
    end

    context "GET #new" do 
        it "espero retornar sucesso e renderize a página new" do
            get :new
            expect(response).to have_http_status(200) #espero que retorne 200
            expect(response).to render_template(:new)
        end

        it "espero um novo professor" do
            get :new
            expect(assigns(:professor)).to be_a(Professor) 
            expect(assigns(:professor)).to be_a_new(Professor) 
        end
    end

    context "GET #edit" do 
        let!(:professor){ create(:professor) }
        it "espero sucesso e renderize a página editar" do
            get :edit, params: { id: professor.id }
            expect(response).to render_template(:edit)
            expect(assigns(:professor)).to be_a(Professor)
        end
    end

    context "POST #create" do 
        let!(:params) {
            { nome: 'Marcos', email: 'marcos@usp.br', nusp: 10840300 }
        }
        it "criar um novo professor" do
            post :create, params: { professor: params }
            expect(flash[:notice]).to eq("Professor criado com sucesso!.")
            expect(response).to redirect_to(action: :show, id: assigns(:professor).id)
        end

        it "não criou um novo professor" do
            params = { nome: 'Marcos' }
            post :create, params: { professor: params }
            expect(flash[:notice]).to eq("Erro ao criar professor!.")
            expect(response).to render_template("new")
        end
    end

    context "PUT #update" do 
        let!(:professor){ create(:professor) }

        it "espero atualizar os dados do professor" do
            params = { email: "marcos1@usp.br" }

            put :update, params: { id: professor.id, professor: params }
            professor.reload #recarregar com os dados atualizado
            expect(professor.email).to eq(params[:email])
            expect(flash[:notice]).to eq("Professor atualizado com sucesso!.")
        end

        it "espero que não atualize os dados do professor" do
            params = { email: nil }

            put :update, params: { id: professor.id, professor: params }
            expect(flash[:notice]).to eq("Professor não atualizado com sucesso!.")
            expect(response).to render_template(:edit)
        end
    end


    context "DELETE #destroy" do 
        let!(:professor){ create(:professor) }

        it "espero deletar professor" do
            delete :destroy, params: { id: professor.id }
            expect(flash[:notice]).to eq("Professor excluído com sucesso!.")
            expect(response).to redirect_to(action: :index)
        end
    end

end