*** Settings ***

Library     Browser

Resource        ${EXECDIR}/resources/locators/Table/table_locators.robot

*** Keywords ***

Verificar se o botao Add está visível

    Get Text    ${ADD_NEW_RECORD_BUTTON}    ==      Add

Verificar se o input de pesquisa está visível

    Get Element By    selection_strategy=Placeholder   text=Type to search  exact=True

Verificar se a tabela está visível na tela

    Get Text    ${TABLE}    *=  First Name\nLast Name\nAge\nEmail\nSalary\nDepartment\nAction

Verificar o conteúdo de uma celula da tabela
    [Arguments]     ${conteudo}

    ${element} =   Replace String    ${TABLE_ROW_ITEM}   $$   ${conteudo}
    Get Text        ${element}

Verificar se o conteúdo de uma celula não está na tabela
    [Arguments]     ${conteudo}

    ${element}=    String Replace  ${TABLE_ROW_ITEM}    $$    ${conteudo}
    Get Element States     ${element}   ==  detached

Inserir um texto no campo de pesquisa
    [Arguments]     ${texto}

    Fill Text       ${TABLE_SEARCH_BOX}     ${texto}
    Get Text        ${TABLE_SEARCH_BOX}  ==  ${texto}

Clicar no botão para excluir uma linha da tabela
    [Arguments]     ${value}

    ${element}=    String Replace  ${TABLE_ROW_ITEM_DELETE}    $$    ${value}
    CLick   ${element}

Clicar para remover cada um dos itens da tabela

    ${count}=       Get Element Count       ${DELETE_ICON}
    FOR     ${index}    IN RANGE      ${count}
        Click   (${DELETE_ICON})[1]
    END

Verificar se a tabela está vazia

    Get Text    ${TABLE_ROWS_NOT_FOUND}     ==      No rows found

Clicar no botão para editar uma linha da tabela
    [Arguments]     ${value}

    ${element}=    String Replace  ${TABLE_ROW_ITEM_EDIT}    $$    ${value}
    CLick   ${element}

Clicar no botão para abrir o formulário de registro de itens na tabela

    CLick   ${ADD_NEW_RECORD_BUTTON}

Verificar se o modal de registro está visível
    [Arguments]     ${status}=visible

    Get Element States    ${MODAL_HEADER}   *=      visible

Clicar para fechar o modal de registro da tabela

    CLick       ${MODAL_HEADER_CLOSE}

Inserir um valor no campo nome
    [Arguments]     ${value}

    Fill Text   ${MODAL_HEADER_FIRST_NAME}      ${value}
    Get Text    ${MODAL_HEADER_FIRST_NAME}  ==  ${value}

Inserir um valor no campo sobrenome
    [Arguments]     ${value}

    Fill Text   ${MODAL_HEADER_LAST_NAME}      ${value}
    Get Text    ${MODAL_HEADER_LAST_NAME}  ==  ${value}

Inserir um valor no campo email
    [Arguments]     ${value}

    Fill Text   ${MODAL_HEADER_EMAIL}      ${value}
    Get Text    ${MODAL_HEADER_EMAIL}  ==  ${value}

Inserir um valor no campo idade
    [Arguments]     ${value}

    Fill Text   ${MODAL_HEADER_AGE}      ${value}
    ${string_value}=    Convert To String   ${value}
    Get Text    ${MODAL_HEADER_AGE}  ==  ${string_value}

Inserir um valor no campo salario
    [Arguments]     ${value}

    Fill Text   ${MODAL_HEADER_FIRST_SALARY}      ${value}
    ${string_value}=    Convert To String   ${value}
    Get Text    ${MODAL_HEADER_FIRST_SALARY}  ==  ${string_value}

Inserir um valor no campo departamento
    [Arguments]     ${value}

    Fill Text   ${MODAL_HEADER_DEPARTMENT}      ${value}
    Get Text    ${MODAL_HEADER_DEPARTMENT}  ==  ${value}

Clicar no botão submit do formulário de cadastro da tabela

    Click   ${MODAL_HEADER_BUTTON_SUBMIT}

