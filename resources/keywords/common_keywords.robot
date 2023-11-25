*** Settings ***

Library    Browser
Library     String
Library     FakerLibrary    locale=pt_BR

*** Variables ***
${LOGIN URL}              https://demoqa.com/
${BROWSER}                chromium
${HEADLESS}               false
${VIEWPORT}               {'width': 1920, 'height': 1080}


&{MESES}            1=January
...                 2=February
...                 3=March
...                 4=April
...                 5=May
...                 6=June
...                 7=July
...                 8=August
...                 9=September
...                 10=October
...                 11=November
...                 12=December

&{MESES_ABREV}              1=Jan
...                         2=Feb
...                         3=Mar
...                         4=Apr
...                         5=May
...                         6=Jun
...                         7=Jul
...                         8=Aug
...                         9=Sep
...                         10=Oct
...                         11=Nov
...                         12=Dec


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

    ${nome}=                      FakerLibrary.User Name
    ${sobrenome}=                 FakerLibrary.Last Name
    ${email}=                     FakerLibrary.Email
    ${mobile}=                    FakerLibrary.Phone Number
    ${mobile}=                    Remove String    ${mobile}    +    -    (    )    ${SPACE}
    ${mobile}=	                  Get Substring	${mobile}	-10
    ${date_of_birth}=             FakerLibrary.Date Of Birth    minimum_age=18
    ${subjects}=                  FakerLibrary.Words        nb=3
    ${endereco_atual}=            FakerLibrary.Address
    ${endereco_permanente}=       FakerLibrary.Address
    ${idade}=                     FakerLibrary.Random Number  digits=2
    ${salario}=                   FakerLibrary.Random Number     digits=4
    ${departamento}=              FakerLibrary.Word
    ${genre}=      Set Variable   Male
    @{hobbies_list}=              Create List       Sports    Reading    Music
    ${state}=     Set Variable    Uttar Pradesh
    ${city}=      Set Variable   Agra
    @{user_subjects}              Create List    Arts    Biology

    
    &{usuario}=         Create Dictionary       nome=${nome}
    ...                                         sobrenome=${sobrenome}
    ...                                         email=${email}
    ...                                         mobile=${mobile}
    ...                                         date_of_birth=${date_of_birth}
    ...                                         subjects=${subjects}
    ...                                         endereco_atual=${endereco_atual}
    ...                                         endereco_permanente=${endereco_permanente}
    ...                                         idade=${idade}
    ...                                         salario=${salario}
    ...                                         departamento=${departamento}
    ...                                         genre=${genre}
    ...                                         hobbies_list=${hobbies_list}
    ...                                         state= ${state}
    ...                                         city= ${city}
    ...                                         subjects=${user_subjects}
    ...                                         user_picture=robot_logo.png

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

Inserir valor em um campo Input
    [Arguments]    ${locator}    ${valor}

    Fill Text       ${locator}     ${valor}
    Get Text        ${locator}  ==  ${valor}

Formatar data para dia abreviacao mes e ano
    [Arguments]    ${data}

    ${mes}=              Convert To String    ${data.month}
    ${data_input}=       Catenate    ${data.day}    ${MESES_ABREV}[${mes}]    ${data.year}
    
    ${day}=              Convert To String    ${data.day}
    ${day_length}=    Get Length    ${day}
    IF    ${day_length} == 1
       ${data_input}=       Catenate    0${data.day}    ${MESES_ABREV}[${mes}]    ${data.year}
    END

    [Return]    ${data_input}

Formatar data para dia mes, ano
    [Arguments]    ${data}

    ${mes}=              Convert To String    ${data.month}
    ${data_input}=       Catenate    ${data.day}    ${MESES}[${mes}],${data.year}
    
    ${day}=              Convert To String    ${data.day}
    ${day_length}=    Get Length    ${day}
    IF    ${day_length} == 1
       ${data_input}=       Catenate    0${data.day}    ${MESES}[${mes}],${data.year}
    END

    [Return]    ${data_input}