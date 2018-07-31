#language: en

Feature: Testar os componentes radio e checkbox
      Eu como usuario quero testar a selecao dos componentes radio e checkbox

      Background: Preparar o ambiente
          Given que esteja na tela de Busca de elementos - radio e checkbox


      Scenario Outline: Selecionar o radio do tipo 1 e tipo 2
            When seleciono o radio com valor "<nome_radio>"
            Then o radio "<nome_radio>" "<decisao>" deve estar selecionado

            Examples: Nomes dos radios e decisoes
                 |  nome_radio  |  decisao |
                 |    red       |    sim   |
                 |    blue      |    sim   |
                 |    yellow    |    sim   |
                 |    green     |    sim   |


       Scenario Outline: Selecionar o checkbox do tipo 1 e tipo 2
             When seleciono o checkbox com valor "<nome_checkbox>"
             And o checkbox "<nome_checkbox>" "<decisao1>" deve estar selecionado
             And desceleciono o checkbox com valor "<nome_checkbox>"
             Then o checkbox "<nome_checkbox>" "<decisao>" deve estar selecionado

             Examples: Nomes dos checkbox e decisoes
                  |  nome_checkbox  | decisao1 | decisao2|
                  |      purple     |    sim   |   nao   |
                  |      grey       |    sim   |   nao   |
                  |      black      |    sim   |   nao   |
                  |      white      |    sim   |   nao   |
