Dado('que estou na página de cadastro de aluno') do
  visit '/alunos/new'
end

Quando('preencho o campo {string} com {string}') do |string, string2|
  fill_in string, :with => string2
end

Quando('clico em salvar aluno') do
  click_on 'Salvar novo aluno'
end

Então('ele deve ter sido salvo no banco de dados') do
  aluno = Aluno.order("id").last
  expect(aluno.nome).to eq('Miguel Vasconcelos')
  expect(aluno.email).to eq('miguel.vasconcelos@usp.br')
end

Então('deverei ver o aluno na página de listagem de alunos') do
  expect(page).to have_content('Miguel Vasconcelos')
  expect(page).to have_content('miguel.vasconcelos@usp.br')
end

Quando('deixo o campo {string} vazio') do |string|
  fill_in string, :with => ""
end

Então('deverei ver a mensagem de erro {string}') do |string|
  expect(page).to have_content(string)
end