Então('deverei ver a prova na tabela que lista todas as alunos') do
  visit '/provas/all'

  expect(page).to have_content('ACH2012')
  expect(page).to have_content(DateTime.now.strftime("%Y-%m-%d"))
end