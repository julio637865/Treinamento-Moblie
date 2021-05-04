Dado('que eu acesso a tela de login') do
    @nav.tap_hamburger
    @nav.tap_by_text("FORMS")
    @nav.tap_by_text("LOGIN")
end
Quando('submeto minhas credenciais:') do |table|
    users = table.rows_hash
    puts(users)
    @login.sing_in(users[:email], users[:senha]) 
     
    
end
Então('devo ver a notificação {string}') do |notice|
    #log(get_source) descobrir elementos na tela 
    expect(@toaster.mensagem_longin.text).to eql notice
end

