*** Settings ***
Documentation   Suíte de exmeplo didático para exemplificar o uso de LOGs nos testes
...             Os LOGs são de grande utilidade, faça LOGs para analisar como seu teste está sendo executado nas entrelinhas
...             Os LOGs te ajudam a achar falhas na automação dos seus testes
...             Use LOGs sem moderação!!
Library         SeleniumLibrary

*** Variables ***
@{FRUTAS}   maça  banana  uva  abacaxi 

*** Test Cases ***  #Criado test case para fins didaticos
Caso de teste exemplo 01
    Usando LOG para mensagens  
    Usando LOG Console
    Usando screen shots

*** Keywords ***  
Usando LOG para mensagens
    Log     Minha mensagem de LOG     #ESSA KEYWORD DA BUILTIN
    ${VAR}  Set Variable    variável qualquer
    Log     Posso logar uma ${VAR} no meio de um log   #Logs são usados para PRINTAR um dado na tela
 
Usando LOG Console
    Log To Console      Posso logar na saída do console     #Essa mensagem aparece apenas no terminal de execução
    Log Many            Posso logar minha lista completa @{FRUTAS}
    Log                 Posso logar somente itens da minha lista ${FRUTAS[0]} - ${FRUTAS[1]}

Usando screen shots
    Log     Nos testes web, podemos logar Screenshot com a SeleniumLibrary
    Open Browser    http://www.robotizandotestes.blogspot.com.br    chrome
    Capture Page Screenshot      nome_do_meuscreenshot.png
    Close Browser
