*** Settings ***
Library     SeleniumLibrary
Library     ScreenCapLibrary


*** Variables ***
# Variáveis globais reutilizáveis

${BROWSER}                      edge
${URL}                          https://www.amazon.com.br

# Elementos da página
${MENU_ELETRONICOS}             //div[@class='nav-div'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}           (//h2[contains(.,'Eletrônicos e Tecnologia')])[1]
${BOTAO_CONTINUAR}              //button[@class='a-button-text' and text()='Continuar comprando']
${ADC_CARRINHO}                 //input[contains(@name,'submit.add-to-cart')]
${BOTAO_INCLUIR_PROTECAO}       //input[contains(@data-asin,'B0DK41HNTV')]
${BTN_NAO_OBRIGADO}             //input[contains(@aria-labelledby,'attachSiNoCoverage-announce')]
${ACESSAR_CARRINHO}             //a[contains(@class,'nav-a nav-a-2 nav-progressive-attribute')]
${EXCLUIR_ITEM_CARRINHO}        //input[@value='Excluir']
${CARRINHO_VAZIO}               //h3[@class='a-size-large a-spacing-top-base sc-your-amazon-cart-is-empty'][contains(.,'Seu carrinho da Amazon está vazio')]
${CARRINHO_ITEM_REMOVIDO}
...    //span[contains(.,'Console Xbox Series S
...    Abre em uma nova aba
...    foi removido de Carrinho de compras.')]
${MENSAGEM_REMOVIDO}            Console Xbox Series S foi removido de Carrinho de compras
${MENSAGEM_VAZIO}               Seu Carrinho da Amazon está vazio
${SEM_PRODUTO_CARRINHO}         //span[@class='a-size-medium sc-number-of-items'][contains(.,'Subtotal (0 produtos):')]


*** Keywords ***
Abrir Navegador
    [Documentation]    Abre o navegador e maximiza a janela
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar Navegador
    [Documentation]    Fecha o navegador após capturar a tela
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    ${URL}
    ${botao_aparece}=    Run Keyword And Return Status    Element Should Be Visible    ${BOTAO_CONTINUAR}
    IF    ${botao_aparece}    Click Element    ${BOTAO_CONTINUAR}
    Wait Until Element Is Visible    ${MENU_ELETRONICOS}    timeout=15s

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Button    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[3]

Adicionar o produto "Console Xbox Series S" no carrinho
    Click Element    locator=//img[@alt='Console Xbox Series S']
    Wait Until Element Is Visible    locator=add-to-cart-button    timeout=15s
    Click Element    locator=add-to-cart-button

    # Verifica se o botão "Não, obrigado(a)" aparece (painel de proteção de garantia)
    ${protecao_aparece}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible    locator=${BTN_NAO_OBRIGADO}    timeout=15s

    IF    ${protecao_aparece}    Click Element    locator=${BTN_NAO_OBRIGADO}

    # Espera o botão do carrinho visível no painel lateral
    Wait Until Element Is Visible    locator=${ACESSAR_CARRINHO}    timeout=20s
    Click Element    locator=${ACESSAR_CARRINHO}

Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    # Verifica se o número de itens no carrinho foi atualizado
    Wait Until Element Is Visible    locator=//span[@class='a-size-small'][contains(.,'Xbox Series S')]    timeout=15s

Remover o produto "Console Xbox Series S" do carrinho
    Wait Until Element Is Visible    locator=${EXCLUIR_ITEM_CARRINHO}    timeout=20s
    Scroll Element Into View    locator=${EXCLUIR_ITEM_CARRINHO}
    Click Element    locator=${EXCLUIR_ITEM_CARRINHO}

Verificar se o carrinho fica vazio
    Wait Until Element Is Visible
    ...    locator=${SEM_PRODUTO_CARRINHO}


#GHERKIN EXERCICIO

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Adicionar o produto "Console Xbox Series S" no carrinho

Quando adicionar o produto "Console Xbox Series S" no carrinho
    Verificar o resultado da pesquisa se está listando o produto "Xbox Series S"

Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

E existe o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

Quando remover o produto "Console Xbox Series S" do carrinho
    Remover o produto "Console Xbox Series S" do carrinho

Então o carrinho deve ficar vazio
    Verificar se o carrinho fica vazio
