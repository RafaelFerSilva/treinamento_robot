*** Settings ***

Library     Browser
Library     String

Resource         ${EXECDIR}/resources/locators/Home/home_locators.robot

*** Keywords ***

Validar se o banner da home está visível

     Get Text       ${HOME_BANNER}

Validar se o card ${card} está visível

    ${element}      Replace String    ${CARDS}	  $$    ${card}
    Get Text        ${element}

Clicar no card ${card}

     ${element}      Replace String    ${CARDS}	  $$    ${card}
     Click     ${element}

Verificar o header da página do card ${card}

     Get Text        //h1       ==    ${card}

Clicar no link TOOLSQA no header da tela dos cards
     
     Click     ${LINK_TOOLQA_HEADER}
