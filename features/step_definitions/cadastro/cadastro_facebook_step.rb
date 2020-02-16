# frozen_string_literal: true

# contexto
Dado('que eu visite a pagina principal') do
  @cadastrar = CadastrarUsuarioPage.new
  @cadastrar.usuario_page.load
end

# @cadastrar_usuario
Quando('eu cadastrar um usuario') do
  @cadastrar.formulario
end

Entao('ele sera cadastrado') do
  expect(page).to have_content('')
end
