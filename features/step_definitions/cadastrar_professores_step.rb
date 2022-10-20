Dado('que estou na página de cadastro de professor') do
    visit '/professors/new'
end

Quando('preencho o campo {string} com {int}') do |string, int|
    fill_in string, :with => int
end
  
Quando('clico em salvar professor') do
    click_on 'Salvar novo professor'
end

Então('o professor deve ter sido salvo no banco de dados') do
    professor = Professor.order("id").last
    expect(professor.nome).to eq('Marcos Antônio')
    expect(professor.email).to eq('marcos@usp.br')
    expect(professor.nusp).to eq(11840300)
end

