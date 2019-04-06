#language: en

  Feature: Selecionar a datas no componente Datapicker
        Eu como usuario quero selecionar datas no Datapicker

        Background: Preparar o ambiente
              Given que esteja na tela Widgets - Datapicker


        Scenario Outline: Selecionar data no Datapicker
              When seleciono a data "<data>"
              Then a data selecionada deve ser "<valor_input_data>"

              Examples: Datas
                    |      data        | valor_input_data |
                    | 1/December/2018  |  Dec 01, 2019    |
                    | 5/December/2017  |  Dec 05, 2017    |
                    | 15/December/2016 |  Dec 15, 2016    |
                    | 10/May/2018      |  May 10, 2019    |
                    | 20/May/2017      |  May 20, 2017    |
                    | 30/May/2016      |  May 30, 2016    |
