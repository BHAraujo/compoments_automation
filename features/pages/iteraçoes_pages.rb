class DragDrop < SitePrism::Page

    set_url "/iteracoes/draganddrop"
    element :drag, "#winston"
    element :drop, "#dropzone"

end


class MouseHover < SitePrism::Page

  set_url "iteracoes/mousehover"

  element :mensagem, ".card-content"

end
