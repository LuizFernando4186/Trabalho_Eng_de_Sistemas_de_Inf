require 'coveralls'
Coveralls.wear!('rails')

require 'rails_helper'

RSpec.describe Aluno, type: :model do
  it 'invalido sem nome' do
    aluno = Aluno.new
    aluno.email = "teste@gmail.com"
    expect(aluno).not_to be_valid
  end
  it 'invalido sem email' do
    aluno = Aluno.new
    aluno.name = "jose"
    expect(aluno).not_to be_valid
  end
  it 'invalido com email com formato invalido' do
    aluno = Aluno.new
    aluno.name = "jose"
    aluno.email = "jose!#,@g!.com"
    expect(aluno).not_to be_valid
  end
end
