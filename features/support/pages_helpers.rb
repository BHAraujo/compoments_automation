Dir[File.join(File.dirname(__FILE__), '../pages/*_pages.rb')].each { |file| require file}

module PageObject

  def formulario
    @formulario ||= Formulario.new
  end

  def links
    @links ||= Links.new
  end

  def botoes
    @botoes ||= Botoes.new
  end

  def radio
    @radio ||= Radio.new
  end

  def dropdown
    @dropdown ||= Dropdown.new
  end

  def janela
    @janela ||= Janela.new
  end

  def modal
    @moda ||= Modal.new
  end

  def autocomplete
    autocomplete ||= AutoComplete.new
  end

  def dragdrop
    dragdrop ||= DragDrop.new
  end

  def mousehover
    mousehover ||= MouseHover.new
  end

  def datapicker
    datapicker ||= Datapicker.new
  end
  
end
