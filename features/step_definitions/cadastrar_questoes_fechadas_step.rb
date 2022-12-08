Dado('que eu estou na tela de cadastro de uma questão fechada') do
    visit '/questoes_fechadas/new'
end

# Grupo de questão
Quando(' preencho o campo da questão fechada {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

# Título
E ('preencho o campo da questão fechada {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end


E ('preencho o campo da questão fechada {string} com {int}') do |string, int|
    fill_in string, :with => int
end


E ('clico em Salvar para salvar a questão fechada') do
    click_on 'Salvar questão fechada'
end

Então('ela deveria ter sido salva no banco de dados') do
    questao_fechada = QuestaoFechada.order("id").last
end


Então ('deverei ver uma mensagem de erro') do
    expect(page).to have_content('É obrigatório informar a alternativa correta da questão!')
end