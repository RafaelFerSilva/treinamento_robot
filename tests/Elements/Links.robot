*** Settings ***

Resource        ${EXECDIR}/resources/utils/common_imports.robot
Resource        ${EXECDIR}/resources/keywords/Links/links_keywords.robot

Suite Setup     Abrir o navegador no site da DEMOQA

Test Setup      Run Keywords    Acessar a tela do card Elements     AND
...                             Validar se a categoria Elements e suas sub-categorias estão visíveis    AND
...                             Selecionar a sub-categoria Links da categoria Elements e validar se o título da página é Links

Test Teardown   Retornar a tela home clicando no link TOOLSQA
Suite Teardown  Fechar o Browser 

Test Tags  elements    links

*** Test Cases ***
Deve possível acessar a tela de Links

    Validar se a sessão de links para abrir uma nova tab está visível
    Validar se a sessão de links para enviar uma chamada para API está visível

Deve ser possível realizar uma chamada para a API clicando nos links

    Clicar no link Created para enviar uma chamada para API
    Clicar no link No Content para enviar uma chamada para API
    Clicar no link Moved para enviar uma chamada para API
    Clicar no link Bad Request para enviar uma chamada para API
    Clicar no link Unauthorized para enviar uma chamada para API
    Clicar no link Forbidden para enviar uma chamada para API
    Clicar no link Not Found para enviar uma chamada para API

Deve ser redirecionado para a home ao clicar no link simples

    Acessar a nova tab clicando no link  Home
    Validar se a página home está visível

    [Teardown]      Run Keywords    Retornar para uma tab pelo seu ID   ${CURRENT}     AND     Retornar a tela home clicando no link TOOLSQA

Deve ser redirecionado para a home ao clicar no link dinãmico

    Acessar a nova tab clicando no link  Home Dinamico
    Validar se a página home está visível

    [Teardown]      Run Keywords    Retornar para uma tab pelo seu ID   ${CURRENT}     AND     Retornar a tela home clicando no link TOOLSQA