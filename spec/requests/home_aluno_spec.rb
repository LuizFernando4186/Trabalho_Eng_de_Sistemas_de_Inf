require 'rails_helper'

RSpec.describe "HomeAlunos", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get home_aluno_path
      expect(response).to have_http_status(:success)
    end
  end

end
