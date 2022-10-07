require 'rails_helper'

RSpec.describe Aluno, :type => :request do
  describe "Request home page" do
    it "should be successful" do
      get alunos_path
      expect(response).to be_successful
      #expect(response.body).to include("Jose Valim")
    end
  end
end