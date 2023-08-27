*** Settings ***

Resource    ${EXECDIR}/resources/keywords/common_keywords.robot
Resource    ${EXECDIR}/resources/pages/Button/button_page.robot


*** Keywords ***

Realizar um double click no botão Double Click Me

    Realizar um mouse click duplo       ${DOUBLE_CLICK_BTN}

Verificar se a mensagem You have done a double click está visível

    Verificar se a mensagem para o click no botão Double Click Me está visivel      You have done a double click

Realizar um click no botão Right Click Me

    Realizar um mouse click simples     ${RIGHT_CLICK_BTN}      right

Verificar se a mensagem You have done a right click está visível

    Verificar se a mensagem para o click no botão Right Click Me está visivel       You have done a right click

Realizar um click no botão Click Me

    Realizar um mouse click simples     ${SIMPLE_CLICK_BTN}

Verificar se a mensagem You have done a dynamic click está visível

    Verificar se a mensagem para o click no botão Click Me está visivel     You have done a dynamic click

