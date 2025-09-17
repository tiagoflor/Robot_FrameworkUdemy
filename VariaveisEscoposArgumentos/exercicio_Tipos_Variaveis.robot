*** Settings ***
Documentation       Exdrcicio tipos de variaveis

Library             FakerLibrary


*** Variables ***
&{PESSOA}       nome=Tiago    sobrenome=Silva


*** Test Cases ***
Caso de teste Exercicio
    ${EMAIL_NOVO}    Email Customizado    ${PESSOA.nome}    ${PESSOA.sobrenome}
    Log    ${EMAIL_NOVO}


*** Keywords ***
Email Customizado
    [Arguments]    ${NOME}    ${SOBRENOME}
    ${WORD}    FakerLibrary.Word
    VAR    ${EMAIL}    ${NOME}${SOBRENOME}${WORD}@testerobot.com

    RETURN    ${EMAIL}
