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

    [Teardown]  Run keywords    Clicar para colapsar o check box group Home     AND
    ...                         Validar se os sub check boxes do check box Home não estão visíveis
    
Deve ser exibido o nome de todos os checkbox ao selecionar o checkbox home
    [Setup]     Selecionar a sub-categoria Check Box da categoria Elements e validar se o título da página é Check Box

    Selecionar o check box do item Home
    Validar se todos os itens dos check boxes estão exibidos da sessão de resultado

    [Teardown]      Desmarcar o check box do item Home

Deve ser exibido o nome dos check boxes relacionados ao check box Downloads na sessão resultado quando selecionarmos o Downloads
    [Setup]     Selecionar a sub-categoria Check Box da categoria Elements e validar se o título da página é Check Box

    Clicar para expandir o check box group Home
    Selecionar o check box do item Downloads
    Validar os valores exibidos na sessão result    downloads   wordFile    excelFile

    [Teardown]      Run Keywords    Desmarcar o check box do item Downloads     AND
    ...                             Clicar para colapsar o check box group Home

Deve ser exibido o nome dos check boxes relacionados ao check box Desktop na sessão resultado quando selecionarmos o Desktop
    [Setup]     Selecionar a sub-categoria Check Box da categoria Elements e validar se o título da página é Check Box

    Clicar para expandir o check box group Home
    Selecionar o check box do item Desktop
    Validar os valores exibidos na sessão result    desktop   notes   commands

    [Teardown]      Run Keywords    Desmarcar o check box do item Desktop     AND
    ...                             Clicar para colapsar o check box group Home

Deve ser exibido o nome dos check boxes relacionados ao check box Documents na sessão resultado quando selecionarmos o Documents
    [Setup]     Selecionar a sub-categoria Check Box da categoria Elements e validar se o título da página é Check Box

    Clicar para expandir o check box group Home
    Selecionar o check box do item Documents
    Validar os valores exibidos na sessão result    documents   workspace   react   angular     veu     office      public      private     classified      general

    [Teardown]      Run Keywords    Desmarcar o check box do item Documents     AND 
    ...                             Clicar para colapsar o check box group Home
