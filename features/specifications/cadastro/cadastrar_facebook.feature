#language: pt

Funcionalidade: Cadastrar no facebook e logar com a mesma
    O sistema devera cadastrar um usuário e logar na sua conta

    Contexto: Carregar Pagina
    Dado que eu visite a pagina principal

    @cadastrar_usuario
    Cenario: Cadastrar
    Quando eu cadastrar um usuario
    Entao ele sera cadastrado
