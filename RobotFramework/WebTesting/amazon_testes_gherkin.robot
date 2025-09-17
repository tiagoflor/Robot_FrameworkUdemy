*** Settings ***
Documentation       Essa suite testa o site da Amazon
Resource            amazon_resource.robot
Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador


*** Test Cases ***
Caso de Teste 01 Gherkin - Acesso ao menu "Eletrônicos" 
    [Documentation]    Esse teste verifica o menu eletrônicos do site da amazon.com.br
    ...    e verifica a categoria Computadores e Informática
    [Tags]    menus    categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"    
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página



Caso de Teste 02 Gherkin - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto no site da amazon.com.br
    [Tags]    buscaprodutos    listabusca
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página