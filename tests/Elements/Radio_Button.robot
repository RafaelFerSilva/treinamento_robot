*** Settings ***

Resource        ${EXECDIR}/resources/utils/common_imports.robot
Resource        ${EXECDIR}/resources/keywords/Radio_Button/radio_button_keywords.robot
Resource        ${EXECDIR}/resources/keywords/Home/home_keywords.robot

Suite Setup     Abrir o navegador no site da DEMOQA

Test Setup      Run Keywords    Acessar a tela do card Elements     AND
...                             Validar se a categoria Elements e suas sub-categorias estão visíveis    AND
...                             Selecionar a sub-categoria Radio Button da categoria Elements e validar se o título da página é Radio Button    AND
...                             Verificar se os radio buttons estão visíveis

Test Teardown   Retornar a tela home clicando no link TOOLSQA

Suite Teardown  Fechar o Browser 

Force Tags  elements    radio_button

*** Test Cases ***
Deve se retornado o texto You have selected Yes quando o radio button Yes for selecionado
    Selecionar o radio button Yes e validar se o item foi selecionado 

Deve se retornado o texto You have selected Impressive quando o radio button Impressive for selecionado
    Selecionar o radio button Impressive e validar se o item foi selecionado 

Deve estar como desabilitado o radio button No
    Validar se o radio button No está desabilitado  
