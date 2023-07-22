*** Settings ***

Resource        ${EXECDIR}/resources/keywords/common_keywords.robot
Resource        ${EXECDIR}/resources/keywords/home_keywords.robot

Suite Setup     Abrir o navegador no site da DEMOQA
Suite Teardown  Fechar o Browser 

*** Test Cases ***

Deve ser acessada a home do quando acessamos a url do site DEMOQA
    
    Validar se a página home está visível
