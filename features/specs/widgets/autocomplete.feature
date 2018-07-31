# language: en

  Feature: Validar o autocomplete
      Eu como usuario quero fazer uma pesquisa utilizando o autocomplete

      Background: Preparar o ambiente
              Given que esteja na tela Widgets - Autocomplete

           
      Scenario Outline: Utilizar o Autocomplete para preencher o campo
            When digito as iniciais do estado "<iniciais_estado>"
            And clico no estado "<nome_estado>"
            Then o estado selecionado deve ser "<nome_estado>"

      Examples: Estados
              | iniciais_estado | nome_estado    |
              | Santa           | Santa Catarina |
              | Sã              | São Paulo      |
              | B               | Bahia          |
