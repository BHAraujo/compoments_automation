Then("deve abrir um modal com o seguinte texto") do |texto|
      within("#modal1") do
        expect(modal.modal_texto.text.include?(texto)).to eql(true)
      end
end

And("clico no link Abrir") do
    modal.botao_abrir_modal.click
end
