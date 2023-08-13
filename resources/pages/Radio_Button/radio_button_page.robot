*** Settings ***

Library     Browser

Resource    ${EXECDIR}/resources/locators/Radio_Button/radio_button_locators.robot

*** Keywords ***

Verificar o label do radio button ${label}

    ${element}=     String Replace  ${LABEL_RADIO}  $$  ${RADIO_IDS}[${label}]
    Get Text    ${element}  ==  ${label}

Verificar o input do radio button ${label}

    ${element}=     String Replace  ${INPUT_RADIO}  $$  ${RADIO_IDS}[${label}]
    Get Text    ${element}

Selecionar radio button ${label}

    ${element}=     String Replace  ${LABEL_RADIO}  $$  ${RADIO_IDS}[${label}]
    Check Checkbox    ${element}

Validar se o radio button ${label} está selecionado

    ${element}=     String Replace  ${INPUT_RADIO}  $$  ${RADIO_IDS}[${label}]
    Get Element States       ${element}      *=    checked

Validar se o radio button ${label} está com o estado desabilitado

    ${element}=     String Replace  ${INPUT_RADIO}  $$  ${RADIO_IDS}[${label}]
    Get Element States       ${element}      *=    disabled     unchecked

Verificar o resultado do radio button ${label} selecionado
    
    Get Text    ${RADIO_BUTTON_RESULT}  ==  ${label}
