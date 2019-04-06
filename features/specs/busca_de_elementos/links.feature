#language: en

Feature: Acessar os links
      Eu como usuario quero testar os links e verificar o redirecionamento da
      pagina

      Background: Prepara o ambiente
              Given que esteja na tela de Busca de elementos - Links

      
      Scenario: Testar link Ok 200 - Success
              When efetuo um clique no link "Ok 200 - Sucess"
              And "sim" a pagina deve conter a mensagem "Success!!"
              Then a foto do "Deadpool" deve ser exibida


      Scenario: Testar link Erro 400 - Bad Request
              When efetuo um clique no link "Erro 400 - Bad Request"
              And "sim" a pagina deve conter a mensagem "Bad Request!!"
              Then a foto do "Spider" deve ser exibida


      Scenario: Testar link Erro 404 - Page not found
              When efetuo um clique no link "Erro 404 - Page not found"
              And "sim" a pagina deve conter a mensagem "Page Not Found!!"
              Then a foto do "Deadpoolsad" deve ser exibida


      Scenario: Testar link Erro 500 - Internal Server Error
              When efetuo um clique no link "Erro 500 - Internal Server Error"
              And "sim" a pagina deve conter a mensagem "Internal Server Error!!"
              Then a foto do "Servidor" deve ser exibida
