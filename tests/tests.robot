*** Settings ***

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot

*** Test Cases ***

Deve ser possível acessar o site DEMOQA
    Abrir o navegador no site da DEMOQA
    Fechar o Browser 
