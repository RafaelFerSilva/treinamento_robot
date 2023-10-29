*** Settings ***

Library    Browser
Library     String
Library     FakerLibrary

*** Variables ***
${LOGIN URL}              https://demoqa.com/
${BROWSER}                chromium
${HEADLESS}               false
${VIEWPORT}               {'width': 1280, 'height': 720}

*** Keywords ***

Configurar New Page

    ${old_timeout} =    Set Browser Timeout    2m
    New Page        ${LOGIN URL} 
    Set Browser Timeout    ${old_timeout}

Abrir o navegador no site da DEMOQA
    New Browser     browser=${BROWSER}      headless=${HEADLESS}      downloadsPath=${EXECDIR}\\assets\\download
    New Context     viewport=${VIEWPORT}    acceptDownloads=True
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

Criar dados de um usuário fake

    ${nome}=        FakerLibrary.User Name
    ${sobrenome}=        FakerLibrary.Last Name
    ${email}=       FakerLibrary.Email
    ${endereco_atual}=      FakerLibrary.Address
    ${endereco_permanente}=     FakerLibrary.Address
    ${idade}=     FakerLibrary.Random Number  digits=2
    ${salario}=     FakerLibrary.Random Number     digits=4
    ${departamento}=     FakerLibrary.Word

    
    &{usuario}=         Create Dictionary       nome=${nome}
    ...                                         sobrenome=${sobrenome}
    ...                                         email=${email}
    ...                                         endereco_atual=${endereco_atual}
    ...                                         endereco_permanente=${endereco_permanente}
    ...                                         idade=${idade}
    ...                                         salario=${salario}
    ...                                         departamento=${departamento}

    [Return]    ${usuario}

Realizar um mouse click simples
    [Arguments]     ${locator}      ${mouse_button}=left

    Click   ${locator}      ${mouse_button}

Realizar um mouse click duplo
    [Arguments]     ${locator}      ${mouse_button}=left

    Click With Options      ${locator}      clickCount=2

Retornar para uma tab pelo seu ID
    [Arguments]     ${id}

    Switch Page     ${id}

Retornar o href de um elemento
  [Arguments]   ${elemento_com_href}

  ${elem}=          Get Element   ${elemento_com_href}
  ${href}=          Get Property  ${elem}  href

  [Return]    ${href}
