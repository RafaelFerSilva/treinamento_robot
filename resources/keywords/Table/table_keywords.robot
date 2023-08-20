*** Settings ***

Resource        ${EXECDIR}/resources/pages/Table/table_page.robot

*** Keywords ***

Validar os elementos da página Table
    Verificar se o botao Add está visível
    Verificar se o input de pesquisa está visível
    Verificar se a tabela está visível na tela

Validar o conteúdo default da tabela    

    Verificar o conteúdo de uma celula da tabela    Cierra
    Verificar o conteúdo de uma celula da tabela    Legal
    Verificar o conteúdo de uma celula da tabela    alden@example.com

Verificar que um item não está visível na tabela
    [Arguments]     ${item}
    
    Verificar se o conteúdo de uma celula não está na tabela    ${item}

Pesquisar um item na tabela e validar se está visível
    [Arguments]     ${item}

    Inserir um texto no campo de pesquisa   ${item}
    Verificar o conteúdo de uma celula da tabela    ${item}

Excluir uma linha da tabela
    [Arguments]     ${value}

    Clicar no botão para excluir uma linha da tabela    ${value}
    Verificar se o conteúdo de uma celula não está na tabela    ${value}

Excluir todos os itens da tabela

    Clicar para remover cada um dos itens da tabela
    Verificar se a tabela está vazia

Abrir o modal de registro de itens da tabela

    Clicar no botão para abrir o formulário de registro de itens na tabela
    Verificar se o modal de registro está visível

Fechar o modal para registro de itens na tabela

    Clicar para fechar o modal de registro da tabela
    Verificar se o modal de registro está visível   detached

Preencher os dados do modal de registro da tabela
    [Arguments]     ${user}

    Inserir um valor no campo nome              ${user.nome}
    Inserir um valor no campo sobrenome         ${user.sobrenome}
    Inserir um valor no campo email             ${user.email}
    Inserir um valor no campo idade             ${user.idade}
    Inserir um valor no campo salario           ${user.salario}
    Inserir um valor no campo departamento      ${user.departamento}

Registrar um novo item na tabela
    [Arguments]     ${user}

    Preencher os dados do modal de registro da tabela   ${user}   
    Clicar no botão submit do formulário de cadastro da tabela
    Verificar se o modal de registro está visível   detached
