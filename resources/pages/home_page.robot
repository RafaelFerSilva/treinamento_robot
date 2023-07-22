*** Settings ***

Library     Browser
Library     String

Resource         ${EXECDIR}/resources/locators/home_locators.robot

*** Keywords ***

Validar se o banner da home está visível

     Get Text       ${HOME_BANNER}

Validar se o card ${card} está visível

    ${element}      Replace String    ${CARDS}	  $$    ${card}
    Get Text        ${element}
