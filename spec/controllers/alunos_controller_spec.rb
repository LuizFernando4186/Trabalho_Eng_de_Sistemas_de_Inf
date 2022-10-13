require 'rails_helper'

RSpec.describe Aluno, :type => :request do

  describe "Add Aluno" do
    it "Should add a new Aluno" do
      user = Aluno.create(nome: "Teste RSPEC", email: "teste-rspec@gmail.com")
      get alunos_path, params: { :id => 1 }
      expect(response).to be_successful
      expect(response.body).to include("Teste RSPEC")
    end
  end

end