*** Settings ***

Resource    ${EXECDIR}/resources/pages/Radio_Button/radio_button_page.robot

*** Keywords ***

Validar se os labels dos radio buttons estão visíveis

    Verificar o label do radio button Yes
    Verificar o label do radio button Impressive
    Verificar o label do radio button No

Validar se os inputs dos radio buttons estão visíveis

    Verificar o input do radio button Yes
    Verificar o input do radio button Impressive
    Verificar o input do radio button No

Verificar se os radio buttons estão visíveis
    Validar se os labels dos radio buttons estão visíveis
    Validar se os inputs dos radio buttons estão visíveis

Selecionar o radio button ${label} e validar se o item foi selecionado 
    Selecionar radio button ${label}
    Validar se o radio button ${label} está selecionado
    Verificar o resultado do radio button ${label} selecionado

Validar se o radio button No está desabilitado  

    Validar se o radio button No está com o estado desabilitado