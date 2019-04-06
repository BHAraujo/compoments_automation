Given("que esteja na tela Formulario - Criar Usuario") do
    formulario.load
end

Given("que esteja na tela de Busca de elementos - Links") do
    links.load
end

Given("que esteja na tela de Busca de elementos - Botoes") do
  botoes.load
end

Given("que esteja na tela de Busca de elementos - radio e checkbox") do
  radio.load
end

Given("que esteja na tela de Busca de elementos - dropdown e select") do
  dropdown.load
end

Given("que esteja na tela de Mundanca de foco - janela") do
  janela.load
end

Given("que esteja na tela de Mundanca de foco - Modal") do
  modal.load
end

Given("que esteja na tela Widgets - Autocomplete") do
  autocomplete.load
end

Given("que esteja na tela de Iteraçoes - Drag And Drop") do
  dragdrop.load
end

Given("que esteja na tela de Iteraçoes - Mousehover") do
  mousehover.load
end

Given("que esteja na tela Widgets - Datapicker") do
  datapicker.load
end

Then("a foto do {string} deve ser exibida") do |image|
  # byebug
  expect(links.image[:alt]).to start_with(image)
end

Then("{string} a pagina deve conter a mensagem {string}") do |cond, mensagem|
    if cond.include?("sim")
        expect(page).to have_content(mensagem.to_s)
    else
        expect(page).not_to have_content(mensagem)
    end
end

And("clico no link {string}") do |link|
  @janela = window_opened_by do
    click_link link
  end
end

Then("{string} devo ser redirecionado para url {string}") do |cond, url|
    if cond.include?("sim")
      sleep 2
      page.find :css, '.nav-wrapper', wait: TIMEOUT_ELEMENT
      switch_to_window windows.last
      expect(page.current_url).to eq url
    else
      expect(page.current_url).not_to eq url
    end
end

And("atualizo a pagina") do
      page.refresh
end
