Dado('que estou na página de cadastro de prova') do
  visit "provas/new"
end

Quando('preencho o campo {string} da prova com {string}') do |string, string2|
  fill_in string, :with => string2
end

Quando('clico em salvar prova') do
  click_on 'Salvar nova prova'
end

Então('ela deve ter sido salva no banco de dados') do
  prova = Prova.order("id").last
  expect(prova.disciplina).to eq('ACH2012')
end

Então('deverei ver a prova na página de listagem de provas') do
  expect(page).to have_content('1')
  expect(page).to have_content('ACH2012')
end

Quando('deixo o campo {string} da prova vazio') do |string|
  fill_in string, :with => nil
end

Então('deverei ver a mensagem de erro {string} na pagina da prova') do |string|
  expect(page).to have_content(string)
end