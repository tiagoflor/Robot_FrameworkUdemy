*** Settings ***
Documentation   Exercicio tipos de variáveis: LISTAS

*** Variables ***

@{MESES}    
...    janeiro
...    fevereiro
...    março
...    abril
...    maio
...    junho
...    julho
...    agosto
...    setembro
...    outubro
...    novembro
...    dezembro

*** Test Cases ***
Caso de teste Exercicio
   Meses do Ano com dias

*** Keywords ***
Meses do Ano com dias
    # Lendo um item de uma Lista
    Log    Primeiro mês do ano: ${MESES[0]}
    Log    Segundo mês do ano: ${MESES[1]}
    Log    Terceiro mês do ano: ${MESES[2]}
    Log    Quarto mês do ano: ${MESES[3]}
    Log    Quinto mês do ano: ${MESES[4]}
    Log    Sexto mês do ano: ${MESES[5]}
    Log    Sétimo mês do ano: ${MESES[6]}
    Log    Oitavo mês do ano: ${MESES[7]}
    Log    Novo mês do ano: ${MESES[8]}
    Log    Décimo mês do ano: ${MESES[9]}
    Log    Décimo primeiro mês do ano: ${MESES[10]}
    Log    Décimo segundo mês do ano: ${MESES[11]}
