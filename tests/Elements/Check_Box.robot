*** Settings ***

Resource        ${EXECDIR}/resources/keywords/common_keywords.robot
Resource        ${EXECDIR}/resources/keywords/Home/home_keywords.robot
Resource        ${EXECDIR}/resources/keywords/Categorias/categorias_keywords.robot
Resource        ${EXECDIR}/resources/keywords/Check_Box/check_box_keywords.robot

Suite Setup     Run keywords    Abrir o navegador no site da DEMOQA     AND     Acessar a tela do card Elements     AND     Validar se a categoria Elements e suas sub-categorias estão visíveis
Suite Teardown  Fechar o Browser 

Force Tags  elements    check_box

*** Test Cases ***
Deve ser exibido os check boxes Desktop, Documents e Downloads ao expandir o check box Home
    [Setup]     Selecionar a sub-categoria Check Box da categoria Elements e validar se o título da página é Check Box

    Clicar para expandir o check box group Home
    Validar se os sub check boxes do check box Home estão visíveis

    [Teardown]  Run keywords    Clicar para colapsar o check box group Home     AND     Validar se os sub check boxes do check box Home não estão visíveis
    