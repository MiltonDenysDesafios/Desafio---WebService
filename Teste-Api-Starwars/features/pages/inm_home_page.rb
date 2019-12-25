
      class Home < SitePrism::Page
       
        set_url CONFIG['urls']['web']
        element :a_btn_carreira, '#linkcarreiras'
        element :p_texto_home, '.content-intro.wow.fadeIn'
        elements :a_vagas, '.btn'
        element :a_login, '.header__content__row'
      end
