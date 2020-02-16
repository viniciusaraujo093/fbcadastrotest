# frozen_string_literal: true

# Cadastro de usuario no facebook
class CadastrarUsuarioPage
  include Capybara::DSL

  def usuario_page
    CadastrarUsuarioMappings.new
  end

  def emailconfirma
    usuario_page.email.set 'novo@novo.com'
    sleep 1
    usuario_page.confemail.set 'novo@novo.com'
  end

  def formulario
    usuario_page.nome.set Faker::Name.first_name
    usuario_page.sobrenome.set Faker::Name.last_name
    usuario_page.senha.set Faker::Internet.password(min_length: 8)
    usuario_page.diaaaniversario.select('7')
    usuario_page.mesaaniversario.select('Nov')
    usuario_page.anoaniversario.select('1993')
    page.choose('Feminino')
    emailconfirma
    usuario_page.submit.click
  end
end
