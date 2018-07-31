#language: en

Feature: Validar o texto exibido no modal
      Eu como usuario quero clicar no botao para abrir o modal e validar o texto
      escrito

      Background: Preparar o ambiente
            Given que esteja na tela de Mundanca de foco - Modal

    
    Scenario: Clicar no botao para validar o modal
            When clico no link Abrir
            Then deve abrir um modal com o seguinte texto
            """
            Pensando mais a longo prazo, a execução dos pontos do programa garante
            """
