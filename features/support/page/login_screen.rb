class Validacao_Login
    def sing_in(email, senha)
           find_element(id:  'io.qaninja.android.twp:id/etEmail').send_keys(email)
           find_element(id:  'io.qaninja.android.twp:id/etPassword').send_keys(senha) 
           find_element(id:  'io.qaninja.android.twp:id/btnSubmit').click
    end

    def mensagem_longin 
        return find_element(xpath: "//android.widget.Toast")
    end

end     