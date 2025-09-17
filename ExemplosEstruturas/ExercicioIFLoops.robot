*** Settings ***
Documentation       Exercicio de Loops


*** Variables ***
@{LISTA_NUMERICA}        2    3    4    5    7    9    10

*** Test Cases ***
Exercicio Contagem Númerica
    Contagem Númerica


*** Keywords ***
Contagem Númerica
    Log To Console    ${\n}

    FOR    ${CONTAGEM}    IN    @{LISTA_NUMERICA}
        IF    ${CONTAGEM} == 5
            Log To Console     Eu sou o número 5!
            Log    Eu sou o número 5!

        ELSE IF     ${CONTAGEM} == 10
            Log To Console     Eu sou o número 10!
            Log    Eu sou o número 10!

        ELSE 
            Log    Eu não sou o número 5 e nem o 10!
        END
    END
