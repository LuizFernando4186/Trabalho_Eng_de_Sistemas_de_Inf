Dado('que eu estou na tela de cadastro de uma questão fechada') do
    visit '/questao_fechadas/new'
end

# Grupo de questão
Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

# Título
E ('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

# Enunciado
E ('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

# Total de alternativas
E ('preencho o campo {string} com {int}') do |string, int|
    fill_in string, :with => int
end

# Alternativas por aluno
E ('preencho o campo {string} com {int}') do |string, int|
    fill_in string, :with => int
end

# Alternativa correta
E ('preencho o campo {string} com {int}') do |string, int|
    fill_in string, :with => int
end

E ('clico em Salvar') do
    click_on 'Salvar nova questão fechada'
end

Então('ela deveria ter sido salva no banco de dados') do
    questao = QuestaoFechada.order("id").last
    expect(questao.titulo).to eq('Questão de teste')
    expect(questao.enunciado).to eq('Enunciado da questão de teste')
    expect(questao.total_alternativas).to eq(4)
    expect(questao.alternativas_aluno).to eq(2)
    expect(questao.alternativa_correta).to eq(1)
end


Então ('deverei ver uma mensagem de erro') do
    expect(page).to have_content('É obrigatório informar a alternativa correta da questão!')
end