When("preencho o formulario com as seguintes informacoes:") do |table|
    formulario.preecher_formulario(table.hashes[0][:nome],
                                   table.hashes[0][:ultimo_nome],
                                   table.hashes[0][:email])
end

When("clico no botao criar") do
    formulario.criar_btn.click
end

Then("a tela deve conter a mensagem") do |mensagem|
  expect(formulario.mensagem.text).to eq(mensagem)
end

When("acesso a lista de usuarios") do
    formulario.lista_usuarios_link.click
end

When("quantidade de usuarios deve ser {string}") do |valor|

  expect(formulario.tabela.size).to eq(valor.to_i)
end
