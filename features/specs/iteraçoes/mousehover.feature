#language: en

  Feature: Validar a funcionalidade do componente utilizando o Mousehover
          Eu como usuario quero passar o mouse sobre mensagem e verificar a mensagem
          que sera exibida

        Background: Preparar o ambiente
              Given que esteja na tela de Iteraçoes - Mousehover


        Scenario: Validar o componente Mousehover
              When "sim" a pagina deve conter a mensagem "Passe o mouse aqui"
              And passo o ponteiro do mouse sobre a mensagem Passe o mouse aqui
              Then "sim" a pagina deve conter a mensagem "Você usou o mouse hover!"
