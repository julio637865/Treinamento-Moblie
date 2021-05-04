class Navigatior
    def tap_hamburger
        hamburger = '//android.widget.ImageButton[@content-desc="Open navigation drawer"]'
        find_element(xpath: hamburger).click
    end

    def list
      return find_element(id:  'io.qaninja.android.twp:id/toolbar')
    end

    def tap_by_text(target)
      find_element(xpath: "//*[@text='#{target}']").click
    end

end 

class Toaster 
    def mensagem_longin 
      return find_element(xpath: "//android.widget.Toast")
    end
end 