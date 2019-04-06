#language: en

  Feature: Arrastar icone usando o drag drop
      Eu como usuario que arrastar o emoji utilizando o drag drop

      Background: Preparar o ambiente
            Given que esteja na tela de Iteraçoes - Drag And Drop

            
      Scenario: Arrastar emoji com drag drop
            When clico e arrasto o emoji
            Then o emoji "sim" deve estar dentro do quadro


      Scenario: Arrastar o emoji e atualizar a pagina
             When clico e arrasto o emoji
             And atualizo a pagina
             Then o emoji "nao" deve estar dentro do quadro
