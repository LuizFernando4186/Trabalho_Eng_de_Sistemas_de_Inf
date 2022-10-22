require 'rails_helper'

RSpec.describe "Professors", type: :request do
  describe "POST /professor" do
    it "retornar sucesso" do
      get new_professor_path
      expect(response).to have_http_status(:success)
    end
  end

end