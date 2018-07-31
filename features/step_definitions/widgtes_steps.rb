When("digito as iniciais do estado {string}") do |estado|
        autocomplete.digitar_estado(estado)
end

When("clico no estado {string}") do |estado|
    autocomplete.select_estado
end

Then("o estado selecionado deve ser {string}") do |estado|
    expect(autocomplete.verificar_estado).to eq(estado)
end

When("seleciono a data {string}") do |data|
  datapicker.selecionar_data(data)

end

Then("a data selecionada deve ser {string}") do |data|
  expect(page.execute_script("return document.getElementById('datepicker').value")).to eq(data)
end
