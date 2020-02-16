#language: pt

Funcionalidade: Cadastrar no facebook
    O sistema devera cadastrar um usuário no facebook

    Contexto: Carregar Pagina
    Dado que eu visite a pagina principal

    @cadastrar_usuario
    Cenario: Cadastrar
    Quando eu cadastrar um usuario
    Entao ele sera cadastrado
