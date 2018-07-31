When("efetuo um clique no link {string}") do |nome|
    click_link nome
end

When("clico no botao {string}") do |botao|
  dict_botao = {"Raised" => botoes.botao_raised,
                "Floating" => botoes.botao_floating,
                "Flat" => botoes.botao_flat,
                "Submmit" => botoes.botao_submmit}
  dict_botao[botao].click
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
      dropdown.mail_box.click
end

And("clico no texto {string}") do |texto|
    dict_dropdown = {"Inbox" => dropdown.inbox, "Unread" => dropdown.unread,
                     "Sent" => dropdown.sent, "Outbox" => dropdown.outbox}
    dict_dropdown[texto].click
end

Given("seleciono o Browser Favorito {string}") do |browser|
  select browser, from: "dropdown"
end
