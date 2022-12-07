Dado('que estou na página de filtragem de aluno com nome filtrado') do
  aluno = Aluno.new({ email: 'miguel.vasconcelos@usp.br', nome: "Miguel" })
  aluno.save
  
  visit '/alunos/filter?email=miguel.vasconcelos@usp.br'
end

Então('deverei ser redirecionado para a pagina do aluno com nome em questao') do
  expect(page).to have_content('Miguel')
end