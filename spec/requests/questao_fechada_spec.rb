require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/questoes", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Questao. As you add validations to Questao, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      QuestaoFechada.create! valid_attributes
      get questaos_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      questao = QuestaoFechada.create! valid_attributes
      get questao_url(questao)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_questao_fechada_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      questao = QuestaoFechada.create! valid_attributes
      get edit_questao_fechada_url(questao)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Questao" do
        expect {
          post questoes_fechadas_url, params: { questao: valid_attributes }
        }.to change(QuestaoFechada, :count).by(1)
      end

      it "redirects to the created questao" do
        post questoes_fechadas_url, params: { questao: valid_attributes }
        expect(response).to redirect_to(questao_url(QuestaoFechada.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Questao" do
        expect {
          post questoes_fechadas_url, params: { questao: invalid_attributes }
        }.to change(QuestaoFechada, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post questoes_fechadas_url, params: { questao: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested questao" do
        questao = QuestaoFechada.create! valid_attributes
        patch questao_fechada_url(questao), params: { questao: new_attributes }
        questao.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the questao" do
        questao = QuestaoFechada.create! valid_attributes
        patch questao_fechada_url(questao), params: { questao: new_attributes }
        questao.reload
        expect(response).to redirect_to(questao_url(questao))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        questao = QuestaoFechada.create! valid_attributes
        patch questao_fechada_url(questao), params: { questao: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested questao" do
      questao = QuestaoFechada.create! valid_attributes
      expect {
        delete questao_fechada_url(questao)
      }.to change(Questao, :count).by(-1)
    end

    it "redirects to the questaos list" do
      questao = QuestaoFechada.create! valid_attributes
      delete questao_fechada_url(questao)
      expect(response).to redirect_to(questaos_url)
    end
  end
end