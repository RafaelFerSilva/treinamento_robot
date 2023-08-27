*** Settings ***

Resource        ${EXECDIR}/resources/utils/common_imports.robot
Resource        ${EXECDIR}/resources/keywords/Button/button_keywords.robot

Suite Setup     Abrir o navegador no site da DEMOQA

Test Setup      Run Keywords    Acessar a tela do card Elements     AND
...                             Validar se a categoria Elements e suas sub-categorias estão visíveis    AND
...                             Selecionar a sub-categoria Buttons da categoria Elements e validar se o título da página é Buttons

Test Teardown   Retornar a tela home clicando no link TOOLSQA
Suite Teardown  Fechar o Browser 
Test Tags  elements    button

*** Test Cases ***
Deve ser exibida a mensagem You have done a double click se clicar no botão Double Click Me

    Realizar um double click no botão Double Click Me
    Verificar se a mensagem You have done a double click está visível

Deve ser exibida a mensagem You have done a right click se clicar no botão Right Click Me

    Realizar um click no botão Right Click Me
    Verificar se a mensagem You have done a right click está visível

Deve ser exibida a mensagem You have done a dynamic click se clicar no botão Click Me

    Realizar um click no botão Click Me
    Verificar se a mensagem You have done a dynamic click está visível
