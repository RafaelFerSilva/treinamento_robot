*** Settings ***

Resource    ${EXECDIR}/resources/pages/Links/links_page.robot

*** Keywords ***

Validar se a sessão de links para abrir uma nova tab está visível
    Verificar o sub título da tela de links     Following links will open new tab
    Verificar se o link Home está visível na tela   
    Verificar se o link Home Dinamico está visível na tela  

Validar se a sessão de links para enviar uma chamada para API está visível
    Verificar o sub título da tela de links     Following links will send an api call
    Verificar se o link Created está visível na tela
    Verificar se o link No Content está visível na tela
    Verificar se o link Moved está visível na tela
    Verificar se o link Bad Request está visível na tela
    Verificar se o link Unauthorized está visível na tela
    Verificar se o link Forbidden está visível na tela
    Verificar se o link Not Found está visível na tela

Clicar no link ${key} para enviar uma chamada para API
    Clicar no link ${key}

    IF  '${key}' == 'Moved'
        Validar o texto de response do link Moved Permanently da API
    ELSE
        Validar o texto de response do link ${key} da API
    END

Acessar a nova tab clicando no link
    [Arguments]     ${link}

    Clicar no link ${link}
    ${previous}=    Switch Page     NEW

    Set Test Variable   ${CURRENT}     ${previous}
