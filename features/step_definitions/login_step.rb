Dado('que eu tenho um usuário sem cadastro') do |table|
   @nusp = table.rows_hash['nusp']
   visit sign_in_path
end

Dado('que eu tenho um usuário com cadastro') do |table|
    @nusp = table.rows_hash['nusp']
    visit sign_in_path

    #precisa cadastrar um usuário no BD
end
  
Quando('eu faço login') do
    fill_in 'Nusp', with: @nusp
    click_on 'entrar'
end
  
Então('devo ser direcionado para a área de home') do
    #@logado = find('#menu')
    #expect(@logado.text).to eql 'Menu'
    #url_text = page.find_field('Menu').text
    #expect(page).to have_content('Menu') 
    expect(current_path).to eq("/sign_in")
end