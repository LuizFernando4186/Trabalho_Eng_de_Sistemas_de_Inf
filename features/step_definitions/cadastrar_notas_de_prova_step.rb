Dado('que estou na página de cadastro de notas de prova') do
  prova = Prova.new({ disciplina: "ACH2012" })
  prova.save!
  visit '/notas/new'
end

Quando('preencho o campo {string} da nota de prova com {string}') do |string, string2|
  fill_in string, :with => string2
end

Quando('clico em salvar nota de prova') do
  click_on 'Salvar nota da prova'
end

Então('deverei ver a nota de prova na página de listagem de notas de provas') do
  expect(page).to have_content('1')
  expect(page).to have_content('5.6')
end