*** Settings ***

Resource        ${EXECDIR}/resources/keywords/common_keywords.robot
Resource        ${EXECDIR}/resources/keywords/Home/home_keywords.robot

Suite Setup     Abrir o navegador no site da DEMOQA
Suite Teardown  Fechar o Browser 

*** Test Cases ***

Deve ser acessada a home do quando acessamos a url do site DEMOQA
    
    Validar se a página home está visível

    [Teardown]      Retornar a tela home clicando no link TOOLSQA

Deve ser redirecionado para a tela do card Elements quando clicar no card Elements

    Acessar a tela do card Elements

    [Teardown]      Retornar a tela home clicando no link TOOLSQA

Deve ser redirecionado para a tela do card Forms quando clicar no card Forms

    Acessar a tela do card Forms

    [Teardown]      Retornar a tela home clicando no link TOOLSQA

Deve ser redirecionado para a tela do card Alerts, Frame & Windows quando clicar no card Alerts, Frame & Windows

    Acessar a tela do card Alerts, Frame & Windows

    [Teardown]      Retornar a tela home clicando no link TOOLSQA

Deve ser redirecionado para a tela do card Widgets quando clicar no card Widgets

    Acessar a tela do card Widgets

    [Teardown]      Retornar a tela home clicando no link TOOLSQA

Deve ser redirecionado para a tela do card Interactions quando clicar no card Interactions

    Acessar a tela do card Interactions

    [Teardown]      Retornar a tela home clicando no link TOOLSQA
