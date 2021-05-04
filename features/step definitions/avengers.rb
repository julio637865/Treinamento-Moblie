#Cenario: remover o capitão america 
Dado('que eu acesso a tela Avengers') do
    @nav.tap_hamburger
    @nav.tap_by_text("AVENGERS")
    @nav.tap_by_text("LISTA")
end
Quando('eu apago o capitão america') do

    #start_x => posição inicial na horizontal 
    #start_y => posição inicial na vertical 
    #offset_x => posição final na horizontal 
    #offset_y => posição final na vertical
    #duration => em milesegundos 

    #Check ponit para garantir que estamos na tela certa 
    find_element(id: "io.qaninja.android.twp:id/rvList")

    coord = { start_x: 0.93, start_y: 0.18,  offset_x: 0.48, offset_y: 0.18, duration:2000 }

    Appium::TouchAction.new.swipe(coord).perform
    find_element(id: 'io.qaninja.android.twp:id/btnRemove').click 

end
Então('devo ver a seguinte mensagem {string}') do |expect_message|
    @valor = find_element(id: "io.qaninja.android.twp:id/snackbar_text")
    expect(@valor.text).to eql expect_message
end