*** Settings ***

Library    Browser

Resource    ${EXECDIR}/resources/locators/Button/button_locators.robot

*** Keywords ***

Verificar se a mensagem para o click no botão Double Click Me está visivel
    [Arguments]     ${mensagem}

    Get Text    ${DOUBLE_CLICK_MESSAGE}     ==        ${mensagem}

Verificar se a mensagem para o click no botão Right Click Me está visivel
    [Arguments]     ${mensagem}

    Get Text    ${RIGHT_CLICK_MESSAGE}      ==      ${mensagem}

Verificar se a mensagem para o click no botão Click Me está visivel
    [Arguments]     ${mensagem}

    Get Text    ${SIMPLE_CLICK_MESSAGE}     ==      ${mensagem}
