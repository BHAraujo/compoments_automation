#language:en

Feature: Criar um novo usuario
        Eu como usuario quero efetuar um cadastro no site de automacao e
        listar - los

      Background: Prepara o ambiente
            Given que esteja na tela Formulario - Criar Usuario

    @formulario
    Scenario: Cadastro de usuario
            When preencho o formulario com as seguintes informacoes:
            | nome  | ultimo_nome |    email       |
            | Test  |  Automation |  test@test.com |
            And clico no botao criar
            Then a tela deve conter a mensagem
            """
            Usuário Criado com sucesso
            """
    @formulario
    Scenario: Listar os usuarios cadastrados
            When acesso a lista de usuarios
            When quantidade de usuarios deve ser "110"
