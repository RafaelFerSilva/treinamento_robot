*** Settings ***

Library     Browser

Resource    ${EXECDIR}/resources/locators/Check_Box/check_box_locators.robot

*** Keywords ***

Clicar no toggle button do check box ${check_box}

    ${element}=    String Replace  ${CHECK_BOX_TOOGLE_BUTTON}   $$   ${check_box}
    Click       ${element}

Verificar se o check box ${check_box} está expandido

    ${element}      String Replace  ${CHECK_BOX_EXPANDED}   $$      ${check_box}
    Get Text    ${element}

Verificar se o check box ${check_box} está colpsado

    ${element}      String Replace  ${CHECK_BOX_COLLAPSED}   $$      ${check_box}
    Get Text    ${element}

Verificar se o check box ${check_box} está visível

    ${element}=    String Replace  ${CHECKBOX_LABEL}    $$    ${CHECK_BOX_ITENS}[${check_box}]
    Get Element States     ${element}   *=  visible

Verificar se o check box ${check_box} não está visível

    ${element}=    String Replace  ${CHECKBOX_LABEL}    $$    ${CHECK_BOX_ITENS}[${check_box}]
    Get Element States     ${element}   ==  detached

Selecionar o check box ${check_box}

    ${element}=    String Replace  ${CHECKBOX_LABEL}    $$    ${CHECK_BOX_ITENS}[${check_box}]
    Check Checkbox      ${element}

Validar se o check box ${check_box} está selecionado

    ${element}=    String Replace  ${CHECKBOX_INPUT}    $$    ${CHECK_BOX_ITENS}[${check_box}]
    Get Checkbox State      ${element}      ==    checked

Desmarcar o check box ${check_box}

    ${element}=    String Replace  ${CHECKBOX_LABEL}    $$    ${CHECK_BOX_ITENS}[${check_box}]
    Uncheck Checkbox     ${element}

Validar se o check box ${check_box} não está selecionado

    ${element}=    String Replace  ${CHECKBOX_INPUT}    $$    ${CHECK_BOX_ITENS}[${check_box}]
    Get Checkbox State      ${element}      ==    unchecked

Validar se um checkbox selecionado está sendo exibido na sessão de resultados
    [Arguments]     ${text}

    ${element}=    String Replace       ${CHECKBOX_TEXT_RESULT}      $$      ${text}
    Get Text    ${element}

Validar se a lista com todos os checkboxes estão sendo exibidos na sessão de resultados    

    FOR     ${item}     IN      @{CHECKBOX_TEXT_RESULT_LIST}
        Validar se um checkbox selecionado está sendo exibido na sessão de resultados   ${item}
    END   

 Validar os itens dos checkboxes que estão sendo exibidos na sessão de resultados    
    [Arguments]     ${itens}

    FOR     ${item}     IN      @{itens}
        Validar se um checkbox selecionado está sendo exibido na sessão de resultados   ${item}
    END      
