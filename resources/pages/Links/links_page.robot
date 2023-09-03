*** Settings ***

Library     Browser

Resource    ${EXECDIR}/resources/locators/Links/links_locators.robot

*** Keywords ***

Verificar o sub título da tela de links
    [Arguments]     ${sub_titulo}

    ${element}=   Replace String  ${LINKS_H5_TITLE}     $$    ${sub_titulo}
    Get Text    ${element}

Verificar se o link ${key} está visível na tela

    Get Text    ${LINKS}[${key}]

Clicar no link ${key}

    Click    ${LINKS}[${key}]

Validar o texto de response do link ${key} da API

    ${element}=     String Replace    ${LINK_RESPONSE_TEXT}     ${API_LINK_RESPONSE}[${key}]    ${key}
    Get Text    ${element}

