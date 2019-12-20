#language: pt

@exibir_title
Funcionalidade: Buscar e exibir os filmes da franquia Star Wars

Cenario: Enviar um GET para API e buscar os filmes pelo titulo
    Dado tenho a url 
    Quando é feito uma chamada get
    Então validar que é retornado os filmes corretamente 