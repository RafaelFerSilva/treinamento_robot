*** Settings ***

Resource    ${EXECDIR}/resources/pages/Check_Box/check_box_page.robot

*** Keywords ***

Clicar para expandir o check box group ${check_box}

    Clicar no toggle button do check box ${check_box}
    Verificar se o check box ${check_box} está expandido

Clicar para colapsar o check box group ${check_box}

    Clicar no toggle button do check box ${check_box}
    Verificar se o check box ${check_box} está colpsado

Selecionar o check box do item ${check_box}

    Selecionar o check box ${check_box}
    Validar se o check box ${check_box} está selecionado

Validar se os sub check boxes do check box Home estão visíveis
    Verificar se o check box Desktop está visível
    Verificar se o check box Documents está visível
    Verificar se o check box Downloads está visível

Validar se os sub check boxes do check box Home não estão visíveis
    Verificar se o check box Desktop não está visível
    Verificar se o check box Documents não está visível
    Verificar se o check box Downloads não está visível
