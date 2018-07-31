class Links < SitePrism::Page

  set_url  "buscaelementos/links"

  element :all_mensagem_redirect_h5, ".red-text.text-darken-1"
  element :image, "body > div.row > div.col.s9 > div:nth-child(3) > div > img"

end


class Botoes < SitePrism::Page
  attr_reader :botao
  set_url "/buscaelementos/botoes"

  element :botao_raised, "#teste"
  element :botao_floating, "i[class='material-icons']"
  element :botao_flat, "a[onclick='ativaedesativa3()']"
  element :botao_submmit, "button[onclick='ativaedesativa4()']"
  element :botao_disabled, ".row.btn-large.disabled"

end


class Radio < SitePrism::Page
    set_url "/buscaelementos/radioecheckbox"
end


class Dropdown < SitePrism::Page

    set_url "/buscaelementos/dropdowneselect"

    element :mail_box, ".btn.dropdown-button"
    element :inbox, "#dropdown1"
    element :unread, "#dropdown2"
    element :sent, "#dropdown3"
    element :outbox, "#dropdown4"
end
