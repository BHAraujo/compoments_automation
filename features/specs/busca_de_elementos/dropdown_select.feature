#language: en

Feature: Selecionar as informaçoe via dropdown e select
      Eu como usuario quero preencher o formulario utilizando as opções dos
      dropdown e select


      Background: Preparar o ambiente
              Given que esteja na tela de Busca de elementos - dropdown e select


      Scenario Outline: Clicar no dropdown
              When clico no botao Mail Box
              And clico no texto "<texto>"
              Then "<condicao>" a pagina deve conter a mensagem "<mensagem>"

      Examples: Textos dos dropdown - condicao - mensagem
              |  texto  |  condicao |           mensagem              |
              |  Inbox  |    sim    | Você Clicou no Dropdown Inbox!  |
              |  Unread |    sim    | Você Clicou no Dropdown Unread! |
              |  Sent   |    sim    | Você Clicou no Dropdown Sent!   |
              |  Outbox |    sim    | Você Clicou no Dropdown Outbox! |



      Scenario: Preencher formulario utilizando dropdown e select
                When seleciono o Browser Favorito "Chrome"
                # Then o Browser Favorito deve estar selecionado
