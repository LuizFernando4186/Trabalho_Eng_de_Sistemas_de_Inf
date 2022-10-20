Então('deverei ver o aluno na tabela que lista todos os alunos') do
  visit '/alunos/all'
  expect(page).to have_content('Miguel')
  expect(page).to have_content(DateTime.now.strftime("%Y-%m-%d"))
end