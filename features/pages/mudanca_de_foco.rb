
class Janela < SitePrism::Page

    set_url "/mudancadefoco/janela"

    element :botao_clique_aqui, ".btn.waves-light"
end


class Modal < SitePrism::Page

  set_url "/mudancadefoco/modal"

  element :botao_abrir_modal, "a[href='#modal1']"
  element :modal_titulo, "h4"
  element :modal_texto, "p"

end
