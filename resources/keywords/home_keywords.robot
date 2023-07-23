*** Settings ***

Resource        ${EXECDIR}/resources/pages/home_page.robot

*** Keywords ***

Validar se os cards estão visiveis na home

    Validar se o card Elements está visível
    Validar se o card Forms está visível
    Validar se o card Alerts, Frame & Windows está visível
    Validar se o card Widgets está visível
    Validar se o card Interactions está visível
    Validar se o card Book Store Application está visível

Validar se a página home está visível

    Validar se o banner da home está visível
    Validar se os cards estão visiveis na home

Acessar a tela do card ${card}

    Clicar no card ${card}
    Verificar o heade da página do card ${card}

Acessar a tela do card ${card} e validar que o título ${titulo}

    Clicar no card ${card}
    Verificar o heade da página do card ${titulo}

Retornar a tela home clicando no link TOOLSQA

    Clicar no link TOOLSQA no header da tela dos cards
    Validar se a página home está visível
