require 'test_helper'

RSpec.describe "Test Home Page", type: :request do
  describe "request home page" do
    aluno = Aluno.create(name: "Jose Valim", email: 'teste@gmail.com', nusp: '10773381')
    get alunos_path
    expect(response).to be_successful
    expect(response.body).to include("Jose Valim")
  end
end