#Cenario: Clique simples 
Dado ("que eu acesso a tela click simples") do 
    @nav.tap_hamburger
    @nav.tap_by_text("BOTÕES")
    @nav.tap_by_text("CLIQUE SIMPLES")
end 
Quando ("faço eu click simples") do 
    find_element(:id, "io.qaninja.android.twp:id/short_click").click
end 

Então('devo ver o texto {string}') do |expect_text|
    expect(@toaster.mensagem_longin.text).to eql expect_text
  end
  
#Cenario: Click longoo
Dado ('que eu acesso a tela click longoo') do 
    @nav.tap_hamburger
    @nav.tap_by_text("BOTÕES")
    @nav.tap_by_text("CLIQUE LONGO")
end 
Quando ('faço um click longoo') do
   @button = find_element(:id, "io.qaninja.android.twp:id/long_click")
   Appium:: TouchAction.new.press(element: @button).wait(2000).release.perform  
end 
Então ('eu devo ver o botão com o texto {string}') do |expect_text|
    expect(@button.text).to eql expect_text
end 


