### Projeto de automação de compomentes Web ###


## Descrição ##

  `Automação de compomentes web  do site  https://automacaocombatista.herokuapp.com/ utilizando Ruby, Capybara, Selenium, Site Prism, Rspec e Cucumber.
    Configuração de ambiente`

## Configuração do Ambiente ##

**Instalar o Ruby 2.5.3**
 `link:` https://rubyinstaller.org/downloads/

**Instalar a gem bundler**

  `gem install bundler`

**OBSERVAÇÃO**

      `Para instalar a gems utilizadas no projeto que estão descritas no arquivo "Gemfile", comando: bundle install
     Fazer o download do webdriver Firefox compatível com a versão do browser, link https://github.com/mozilla/geckodriver/releases ;
    Setar o webdriver como variável de ambiente do seu sistema operacional.`

##Executar o projeto##
  `Arquivo cucumber.yml default: -p bdd -p html_report -c - -p bdd --> Exibir os steps sendo executados em tempo real; - -p html_report --> Gerar o      relatório do(s) cenário(s) executado(s)`

**Cucumber**
  - c: `Exibir a cor dos steps em tempo real, VERDE o step passou corretamente e VERMELHO ocorreu alguma falha no step.`

  - Ambiente: `prod --> Para executar o testes no ambiente de produção, "homolog" para executar no ambiente de homologação.`

  - Browser: `:selenium --> Executar os testes com o navegador Firefox.`
             `:selenium_headless --> Executar os testes com o navegador Firefox Headless.`
             `:selenium_chrome --> Executar os testes com o navegador Chrome.`  
             `:selenium_chrome_headless --> Executar os testes com o navegador Chrome Headless.`  
  - html_report: `--format progress --format html --out=reports/html/features_report.html "--out=reports/html/features_report.html" caminho onde será salvo o relatório.`

##Docker##
  ` Para executar os testes dentro do container do Docker`

  - Na raiz do projeto digitar o comando `sudo docker image build -t <nomedaimagem> . `
    Exemplo: `sudo docker iamge build -t geckodriver .`
      Obs: **O '.' sinaliza que você deseja criar a imagem com as Configurações contidas no arquivo `Dockerfile`**

  - Em seguida executar o comando: `sudo docker run --name <nomedocontainer> geckodriver`
      Exemplo: `sudo docker run --name container_geckodriver geckodriver`


##Nome: Bruno Henrique Araujo
##Email: lbruno.henrique.araujo@gmail.com
