#language: en

Feature: Validar a abertura de uma nova pagina
      Eu como usuario que abrir uma nova janela utilizando o botao "clique aqui"


      Background: Preparar o ambiente
            Given que esteja na tela de Mundanca de foco - janela

            
      Scenario: CLicar no botao clique aqui para abrir uma nova janela
            When clico no link "Clique aqui"
            Then "sim" devo ser redirecionado para url "https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow"
            And "sim" a pagina deve conter a mensagem "Você Abriu uma nova janela!!"
            And a foto do "Deadpool" deve ser exibida
