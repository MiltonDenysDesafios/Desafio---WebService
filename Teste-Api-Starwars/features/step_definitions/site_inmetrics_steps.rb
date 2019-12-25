Dado("que acesso a home do site da Inmetrics") do
    @inm = Home.new 
    @inm.load
    @inm.wait_until_p_texto_home_visible
    expect(@inm.p_texto_home.text).to include 'inmetrics'
    
end

Quando("desço até a sessão confira nossas vagas") do
    @inm.wait_until_a_btn_carreira_visible
    @inm.a_btn_carreira.click
    @inm.wait_until_a_vagas_visible
    expect(@inm.a_vagas[2].text).to eql 'confira nossas vagas'
    @inm.a_vagas[2].click       

end

Então("validar que ao clicar no link o usuário é encaminhado para a tela de visualização das vagas") do
    @inm.wait_until_a_login_visible
    expect(@inm.a_login.text).to include 'Login as candidate'
    end
