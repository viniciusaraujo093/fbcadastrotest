# frozen_string_literal: true

# cadastrar um usuario elementos
class CadastrarUsuarioMappings < SitePrism::Page
  set_url 'https://www.facebook.com/'
  element :nome, 'input[name="firstname"]'
  element :sobrenome, 'input[name="lastname"]'
  element :email, 'input[name="reg_email__"]'
  element :confemail, 'input[name="reg_email_confirmation__"]'
  element :senha, 'input[name="reg_passwd__"]'

  # dropdown
  element :diaaaniversario, 'select[id="day"]'
  element :mesaaniversario, 'select[id="month"]'
  element :anoaniversario, 'select[id="year"]'

  # button
  element :submit, 'button[name="websubmit"]'
end
