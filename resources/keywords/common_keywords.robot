*** Settings ***

Library    Browser
Library     String

*** Variables ***
${LOGIN URL}              https://demoqa.com/
${BROWSER}                chromium
${HEADLESS}               false
${VIEWPORT}               {'width': 1280, 'height': 720}

*** Keywords ***

Configurar New Page

    ${old_timeout} =    Set Browser Timeout    1m
    New Page        ${LOGIN URL} 
    Set Browser Timeout    ${old_timeout}

Abrir o navegador no site da DEMOQA
    New Browser     browser=${BROWSER}      headless=${HEADLESS}
    New Context     viewport=${VIEWPORT}
    Configurar New Page
    Get Title    ==       DEMOQA

Fechar o Browser 
    Close Browser

String Replace
    [Documentation]  Replaces the ocurrences of '$$' for the respective strings.
    [Arguments]  ${template_string}  @{replacement_strings}

    FOR    ${string}    IN    @{replacement_strings}
        ${template_string} =   Replace String    ${template_string}   $$   ${string}    count=1
    END

    [Return]    ${template_string}
