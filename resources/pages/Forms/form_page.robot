*** Settings ***

Library    Browser

Resource        ${EXECDIR}/resources/keywords/common_keywords.robot
Resource        ${EXECDIR}/resources/locators/Form/form_locators.robot

*** Keywords ***
Validar se o Título do formulário está visível
    Get Text    ${FORM_TITLE}

Inserir o primeiro nome do estudante
    [Arguments]    ${nome}
    Inserir valor em um campo Input       ${FIRST_NAME}     ${nome}

Inserir o sobrenome nome do estudante
    [Arguments]    ${sobrenome}
    Inserir valor em um campo Input       ${LAST_NAME}     ${sobrenome}

Inserir o e-mail do estudante
    [Arguments]    ${email}
    Inserir valor em um campo Input       ${USER_MAIL}     ${email}

Inserir o endereço do estudante
    [Arguments]    ${address}
    Inserir valor em um campo Input       ${CURRENT_ADDRESS}     ${address}

Inserir o gênero do estudante
    [Documentation]    As opções para genêro hoje são: Male, Female ou Other
    [Arguments]    ${genero}

    ${element}=    String Replace      ${GENDER}    $$    ${genero}
    Check Checkbox      ${element}

Inserir o celular do estudante
    [Arguments]    ${celular}
    Inserir valor em um campo Input    ${MOBILE_NUMBER}    ${celular}

Inserir a data de nascimento do estudante
    [Arguments]    ${data}
    
    ${data_insercao}=    Catenate    ${data.month}    ${data.day}    ${data.year}
    Fill Text       ${DATE_OF_BIRTH}         ${data_insercao}
    Press Keys      ${DATE_OF_BIRTH}         Enter

    ${data_input}=    Formatar data para dia abreviacao mes e ano    ${data}
    Get Text        ${DATE_OF_BIRTH}  ==     ${data_input}

Inserir os habbies do estudante
    [Documentation]    As opções para hobbies hoje são: Sports, Reading ou Music
    [Arguments]    ${hobbies}
    FOR    ${hobbi}    IN    @{hobbies}
      ${element}=    String Replace      ${CHECKBOX_HOBBIES_LABEL}    $$    ${hobbi}
      Check Checkbox      ${element}
    END

Realizar o upload de um arquivo 
  [Arguments]     ${file_path}      ${file_name}

  ${file}=    Catenate    SEPARATOR=\\     ${file_path}       ${file_name}
  ${promise}=    Promise To Upload File    ${file}

  Click        ${UPLOAD_PICTURE}
  ${upload_result}=    Wait For    ${promise} 

  ${file}=    Catenate     SEPARATOR=\\    C:\\fakepath      ${file_name}
  Get Text    ${UPLOAD_PICTURE}   ==     ${file}

Selecionar o estado do estudante
    [Arguments]   ${user_state}
      
    ${banner}=    Evaluate JavaScript    id=fixedban
    ...    document.getElementById("fixedban").style.display = "none";
    Inserir valor em um campo Input    ${STATE}    ${user_state}
    Press Keys    ${STATE}    Enter
    Press Keys    ${STATE}    Tab

Selecionar a cidade do estudante
    [Arguments]   ${user_city}

    Inserir valor em um campo Input    ${CITY}    ${user_city}
    Press Keys    ${CITY}    Enter

Selecionar um subject para o estudante
    [Arguments]    ${user_subject}
    
    FOR  ${subject}  IN  @{user_subject}
        Inserir valor em um campo Input    ${SUBJECTS}    ${subject}
        Press Keys    ${SUBJECTS}    Enter
    END

Clicar no botão finalizar cadastro de estudante
    
     ${footer}=    Evaluate JavaScript    id=fixedban
    ...    document.evaluate('//footer', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.style.display = "none";
    Click    ${SUBMIT_BUTTON}

Clicar no botão para fechar o modal de confirmação de submit no form

    Click    ${CLOSE_LARGE_MODAL}

Validar o título do modal de submit do form
    [Arguments]    ${title}

    Get Text    ${MODAL_SUBMIT}    ==    ${title}

Validar se o título do modal de submit não está visível
    Get Element States    ${MODAL_SUBMIT}   *=     detached

Validar se na linha ${label} tem o valor ${value}
    
    ${element}=    String Replace      ${TABLE_DATA}    $$    ${label}${value}
    Get Text    ${element}

Validar a data de nascimento do estudante no modal de submit
    [Arguments]    ${data}
    
    ${data_input}=    Formatar data para dia mes, ano   ${data}
    Validar se na linha Date of Birth tem o valor ${data_input}

Validar os subjets do estudante no modal de submit
    [Arguments]    ${subjects}

    ${value}=    Catenate    SEPARATOR=,${SPACE}    @{subjects}
    Validar se na linha Subjects tem o valor ${value}

Validar os hobbies do estudante no modal de submit
    [Arguments]    ${hobbies}

    ${value}=    Catenate    SEPARATOR=,${SPACE}    @{hobbies}
    Validar se na linha Hobbies tem o valor ${value}

Validar o estado e cidade do estudante no modal de submit
    [Arguments]    ${state_city}

    ${state_city}    Strip String    ${state_city}    mode=left
    Validar se na linha State and City tem o valor ${state_city}

Validar o endereço do estudante no modal de submit
    [Arguments]    ${endereço}
    
    ${element}=      String Replace      ${endereço}    \n    ${EMPTY}
    @{lines}=        Split To Lines	${element}
    ${value}=        Catenate    SEPARATOR=${SPACE}    @{lines}
    Validar se na linha Address tem o valor ${value}
