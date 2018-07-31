class Formulario < SitePrism::Page

  set_url "/users/new"

  element :nome_field, "#user_name"
  element :ultimo_nome_field, "#user_lastname"
  element :email_field, "#user_email"
  element :criar_btn, "input[name=commit]"
  element :mensagem, "#notice"
  element :lista_usuarios_link, "a[href='/users']"
  elements :tabela, "tr > td"

  def preecher_formulario(nome, ultimo_nome, email)
    nome_field.set(nome)
    ultimo_nome_field.set(ultimo_nome)
    email_field.set(email)
  end

end
