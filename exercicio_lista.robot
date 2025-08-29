*** Settings ***
Documentation   Exercicio tipos de variáveis: DICIONARIO

*** Variables ***

&{MESES_DIAS}
...    mes1= janeiro    diasjan= 31 dias
...    mes2= fevereiro    diasfev= 28 dias
...    mes3= março    diasmar= 31 dias
...    mes4= abril    diasabr= 30 dias
...    mes5= maio    diasmai= 31 dias
...    mes6= junho    diasjun= 30 dias
...    mes7= julho    diasjul= 31 dias
...    mes8= agosto    diasago= 31 dias
...    mes9= setembro    diasset= 30 dias
...    mes10= outubro    diasout= 31 dias
...    mes11= novembro    diasnov= 30 dias
...    mes12= dezembro    diasdez= 31 dias

*** Test Cases ***
Caso de teste Exercicio dias
   Meses do Ano e dias

*** Keywords ***
Meses do Ano e dias
    # Lendo um item de uma Lista
    Log    Primeiro mês do ano: ${MESES_DIAS.mes1} tem ${MESES_DIAS.diasjan}
    Log    Segundo mês do ano: ${MESES_DIAS.mes2} tem ${MESES_DIAS.diasfev}
    Log    Terceiro mês do ano: ${MESES_DIAS.mes3} tem ${MESES_DIAS.diasmar}
    Log    Quarto mês do ano: ${MESES_DIAS.mes4} tem ${MESES_DIAS.diasabr}
    Log    Quinto mês do ano: ${MESES_DIAS.mes5} tem ${MESES_DIAS.diasmai}
    Log    Sexto mês do ano: ${MESES_DIAS.mes6} tem ${MESES_DIAS.diasjun}
    Log    Sétimo mês do ano: ${MESES_DIAS.mes7} tem ${MESES_DIAS.diasjul}
    Log    Oitavo mês do ano: ${MESES_DIAS.mes8} tem ${MESES_DIAS.diasago}
    Log    Novo mês do ano: ${MESES_DIAS.mes9} tem ${MESES_DIAS.diasset}
    Log    Décimo mês do ano: ${MESES_DIAS.mes10} tem ${MESES_DIAS.diasout}
    Log    Décimo primeiro mês do ano: ${MESES_DIAS.mes11} tem ${MESES_DIAS.diasnov}
    Log    Décimo segundo mês do ano: ${MESES_DIAS.mes12} tem ${MESES_DIAS.diasdez}
