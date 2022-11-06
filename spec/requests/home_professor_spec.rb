require 'rails_helper'

RSpec.describe "HomeProfessors", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get home_professor_path
      expect(response).to have_http_status(:success)
    end
  end

end
