require 'rails_helper'

RSpec.describe "Logins", type: :request do
  describe "GET /login" do
    it "retornar sucesso" do
      get sign_in_path
      expect(response).to have_http_status(:success)
    end
  end

end