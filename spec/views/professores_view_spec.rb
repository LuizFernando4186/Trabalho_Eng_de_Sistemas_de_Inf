require 'rails_helper'

RSpec.describe ProfessorsController, :type => :controller do

    context "GET #index" do
        it "espero retornar sucesso e renderizar a página index" do
        get :index
        expect(response).to have_http_status(200) #espero que retorne 200
        expect(response).to render_template(:index)
        end
    end

    context "GET #show" do 
    let(:professor) { create(:professor) }
        it "espero retornar sucesso e renderize a página editar" do
        get :show, params: {id: professor.id }
        expect(response).to have_http_status(200) #espero que retorne 200
        expect(response).to render_template(:show)
        end
    end

    context "GET #new" do 
        it "espero retornar sucesso e renderize a página new" do
        get :new
        expect(response).to have_http_status(200) #espero que retorne 200
        expect(response).to render_template(:new)
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
end