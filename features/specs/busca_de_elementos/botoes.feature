#language: en

Feature: Testar onclick dos botoes

    Background: Preparar o ambiente
            Given que esteja na tela de Busca de elementos - Botoes

    
    Scenario Outline: Testar botao submmit
          When clico no botao "<nome_botao>"
          Then "<condicao1>" a pagina deve conter a mensagem "Você Clicou no Botão!"
          And clico no botao "<nome_botao>"
          Then "<condicao2>" a pagina deve conter a mensagem "Você Clicou no Botão!"

          Examples: Nomes dos botoes
                |nome_botao| condicao1 | condicao2 |
                |  Raised  |    sim    |    nao    |
                | Floating |    sim    |    nao    |
                |  Flat    |    sim    |    nao    |
                | Submmit  |    sim    |    nao    |
                # | Disabled |    nao    |    nao    |
