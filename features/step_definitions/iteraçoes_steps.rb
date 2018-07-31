When("clico e arrasto o emoji") do
  dragdrop.drag.drag_to(dragdrop.drop)
end

Then("o emoji {string} deve estar dentro do quadro") do |cond|
  if cond.eql?("sim")
    expect(dragdrop.drop[:style]).to have_content("background: rgb(0, 200, 0)")
  else
    expect(dragdrop.drop[:style]).to eq("")
  end
end

And("passo o ponteiro do mouse sobre a mensagem Passe o mouse aqui") do
    mousehover.mensagem.hover  
end
