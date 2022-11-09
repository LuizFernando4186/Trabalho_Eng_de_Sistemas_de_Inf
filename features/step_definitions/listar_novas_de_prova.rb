Dado('que estou na página de listagem de notas de prova') do
  prova = Prova.new({ disciplina: "ACH2012" })
  prova.save!

  nota = Notas.new({nota: 7, prova_id: prova.id})
  nota.save!
  visit '/notas/all'
end

Então('deverei ver a lista de notas, com disciplina e nota de cada prova') do
  expect(page).to have_content('ACH2012')
  expect(page).to have_content(DateTime.now.strftime("%Y-%m-%d"))
  expect(page).to have_content("7")
end