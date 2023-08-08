*** Settings ***

Library     Browser

Resource    ${EXECDIR}/resources/locators/Check_Box/check_box_locators.robot

*** Keywords ***

Clicar no toggle button do check box ${check_box}

    ${element}=    String Replace  ${CHECK_BOX_TOOGLE_BUTTON}   $$   ${check_box}
    Click       ${element}

Verificar se o check box ${check_box} está visível

    ${element}=    String Replace  ${CHECKBOX_LABEL}    $$    ${CHECK_BOX_ITENS}[${check_box}]
    Get Text    ${element}     ==      ${check_box}

Verificar se o check box ${check_box} não está visível

    ${element}=    String Replace  ${CHECKBOX_LABEL}    $$    ${CHECK_BOX_ITENS}[${check_box}]
    Get Element States     ${element}   ==  detached

Selecionar o check box ${check_box}

    ${element}=    String Replace  ${CHECKBOX_LABEL}    $$    ${CHECK_BOX_ITENS}[${check_box}]
    Check Checkbox      ${element}

Verificar se o check box ${check_box} está expandido

    ${element}      String Replace  ${CHECK_BOX_EXPANDED}   $$      ${check_box}
    Get Text    ${element}

Verificar se o check box ${check_box} está colpsado

    ${element}      String Replace  ${CHECK_BOX_COLLAPSED}   $$      ${check_box}
    Get Text    ${element}

Validar se o check box ${check_box} está selecionado

    ${element}=    String Replace  ${CHECKBOX_INPUT}    $$    ${CHECK_BOX_ITENS}[${check_box}]
    Get Checkbox State      ${element}      ==    checked
