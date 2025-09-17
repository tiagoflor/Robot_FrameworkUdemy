*** Settings ***
Documentation       Essa suite testa o site da Amazon
Resource            amazon_resources.robot
Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador


*** Test Cases ***
#Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    #[Documentation]    Esse teste verifica o menu eletrônicos do site da amazon.com.br
    #...    e verifica a categoria Computadores e Informática
    #[Tags]    menus    categorias

    #Acessar a home page do site Amazon.com.br
    #Entrar no menu "Eletrônicos"
    #Verificar se aparece a frase "Eletrônicos e Tecnologia"
    #Verificar se aparece a frase "Música"
    #Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    #Verificar se aparece a categoria "Computadores e Informática"
    #Verificar se aparece a categoria "Tablets"

#Caso de Teste 02 - Pesquisa de um Produto
    #[Documentation]    Esse teste verifica a busca de um produto no site da amazon.com.br
    #[Tags]    buscaprodutos    listabusca
    #Acessar a home page do site Amazon.com.br
    #Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    #Clicar no botão de pesquisa
    #Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
 
Caso de Teste 04 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Remover o produto "Console Xbox Series S" do carrinho
    Verificar se o carrinho fica vazio

Caso de Teste 05 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Dado que estou na home page da Amazon.com.br
    Quando adicionar o produto "Console Xbox Series S" no carrinho
    Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
 
Caso de Teste 06 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Dado que estou na home page da Amazon.com.br
    E existe o produto "Console Xbox Series S" no carrinho
    Quando remover o produto "Console Xbox Series S" do carrinho
    Então o carrinho deve ficar vazio