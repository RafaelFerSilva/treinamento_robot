*** Settings ***

Resource    ${EXECDIR}/resources/locators/Text_Box/text_box_locators.robot

*** Keywords ***

Validar se o input para o nome do usuário está visível

    Get Text        ${INPUT_USER_NAME}

Inserir um texto no campo do nome do usuário
    [Arguments]     ${text}

    Fill Text       ${INPUT_USER_NAME}      ${text}
    Get Text        ${INPUT_USER_NAME}  ==  ${text}

Limpar o texto no campo do nome do usuário

    Clear Text      ${INPUT_USER_NAME}

Validar se o input para o email do usuário está visível

    Get Text        ${INPUT_USER_EMAIL}

Inserir um texto no campo de e-mail do usuário
    [Arguments]     ${text}

    Fill Text       ${INPUT_USER_EMAIL}      ${text}
    Get Text        ${INPUT_USER_EMAIL}  ==  ${text}

Limpar o texto no campo do email do usuário

    Clear Text      ${INPUT_USER_EMAIL}

Validar se o input para o endereço atual do usuário está visível

    Get Text        ${TEXT_AREA_CURRENT_ADDRESS}

Inserir um texto no campo de endereço atual do usuário
    [Arguments]     ${text}

    Fill Text       ${TEXT_AREA_CURRENT_ADDRESS}      ${text}
    Get Text        ${TEXT_AREA_CURRENT_ADDRESS}  ==  ${text}

Limpar o texto no campo do endereço atual do usuário

    Clear Text      ${TEXT_AREA_CURRENT_ADDRESS}

Validar se o input para o endereço permanente do usuário está visível

    Get Text        ${TEXT_AREA_PERMANENT_ADDRESS}

Inserir um texto no campo de endereço permanente do usuário
    [Arguments]     ${text}

    Fill Text       ${TEXT_AREA_PERMANENT_ADDRESS}      ${text}
    Get Text        ${TEXT_AREA_PERMANENT_ADDRESS}  ==  ${text}

Limpar o texto no campo do endereço permanente do usuário

    Clear Text      ${TEXT_AREA_PERMANENT_ADDRESS}

Validar se o botão de submit está visível

    Get Text        ${SUBMIT_BUTTON}

Clicar no botão submit

    Click       ${SUBMIT_BUTTON}

Verificar se o user name está sendo exibido no output do formulário da tela de Text Box
    [Arguments]     ${text}

    Get Text    ${OUTPUT_USER_NAME}     ==      Name:${text}

Verificar se o user email está sendo exibido no output do formulário da tela de Text Box
    [Arguments]     ${text}

    Get Text    ${OUTPUT_USER_EMAIL}     ==      Email:${text}

Verificar se o endereço atual está sendo exibido no output do formulário da tela de Text Box
    [Arguments]     ${text}

    ${element} =   Replace String    ${text}   \n   ${SPACE}
    Get Text    ${OUTPUT_CURRENT_ADDRESS}       ==      Current Address :${element}

Verificar se o endereço permanente está sendo exibido no output do formulário da tela de Text Box
    [Arguments]     ${text}

    ${element} =   Replace String    ${text}   \n   ${SPACE}
    Get Text    ${OUTPUT_PERMANENT_ADDRESS}     ==      Permananet Address :${element}
