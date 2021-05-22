*** Settings ***
Documentation        suite para testar a classe ContaLibrary

Library              ContaLibrary.py

*** Test Cases ***
Quando abro uma nova conta deve retornar saldo ZERADO
    Abrir Conta

    ${SALDO_FINAL}        Obter Saldo
    ${SALDO_ESPERADO}     Convert To Number    0.0

    Should Be Equal    ${SALDO_FINAL}    ${SALDO_ESPERADO}