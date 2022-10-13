require 'rails_helper'

RSpec.describe Aluno, :type => :request do

  describe "Request home page" do
    it "should be successful" do
      get alunos_path
      expect(response).to be_successful
    end
  end

  describe "Add Aluno" do
    it "Should add a new Aluno" do
      user = Aluno.create(name: "Teste RSPEC", email: "teste-rspec@gmail.com", nusp: "99999999")
      get alunos_path
      expect(response).to be_successful
      expect(response.body).to include("Teste RSPEC")
    end
  end

end