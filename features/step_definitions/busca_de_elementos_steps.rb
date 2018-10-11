When("efetuo um clique no link {string}") do |nome|
    click_link nome
end

When("clico no botao {string}") do |botao|
    botoes.clicar_no_botao(botao)
end

#radio
When("seleciono o radio com valor {string}") do |radio|
  find("label[for='#{radio}']").click
end


Then("o radio {string} {string} deve estar selecionado") do |radio, cond|
  decisao = {"sim" => "on", "nao" => nil}
  retorno = page.execute_script("""return  $('input[id=#{radio}]:checked').val()""")
  expect(retorno).to eq(decisao[cond])
end


#checkbox
When("seleciono o checkbox com valor {string}") do |checkbox|
  find("label[for=#{checkbox}]").click
end

When("o checkbox {string} {string} deve estar selecionado") do |checkbox, cond|
  decisao = {"sim" => "on", "nao" => nil}
  retorno = page.execute_script("""return  $('input[id=#{checkbox}]:checked').val()""")
  expect(retorno).to eq(decisao[cond])

end

When("desceleciono o checkbox com valor {string}") do |checkbox|
  find("label[for=#{checkbox}]").click
end


#dropdown e select
When("clico no botao Mail Box") do
      dropdown.clicar_botao_mail_box
end

And("clico no texto {string}") do |texto|
  dropdown.clicar_no_texto(texto)
end

Given("seleciono o Browser Favorito {string}") do |browser|
  select browser, from: "dropdown"
end
