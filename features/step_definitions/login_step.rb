Dado('que eu tenho um usuário') do |table|
   @nusp = table.rows_hash['nusp']
   visit sign_in_path
end
  
Quando('eu faço login') do
    fill_in 'Nusp', with: @nusp
    click_on 'entrar'
end
  
Então('devo ser direcionado para a área de home') do
    #expect(page).to have_current_path('/sign_in', url: true)
    #@logado = find('#menu')
    #expect(@logado.text).to eql 'Menu'
end