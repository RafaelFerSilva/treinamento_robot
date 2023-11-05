*** Settings ***

Resource        ${EXECDIR}/resources/utils/common_imports.robot
Resource        ${EXECDIR}/resources/keywords/Home/home_keywords.robot
Resource        ${EXECDIR}/resources/keywords/Table/table_keywords.robot

Suite Setup     Abrir o navegador no site da DEMOQA

Test Setup      Run Keywords    Acessar a tela do card Elements     AND
...                             Validar se a categoria Elements e suas sub-categorias estão visíveis    AND
...                             Selecionar a sub-categoria Web Tables da categoria Elements e validar se o título da página é Web Tables

Test Teardown   Retornar a tela home clicando no link TOOLSQA
Suite Teardown  Fechar o Browser 

Force Tags  elements    web_tables

*** Test Cases ***
Deve ser possível acessar a tela de web tables

    Validar os elementos da página Table
    Validar o conteúdo default da tabela    

Deve ser possível pesquisar um item pela coluna Email

    Pesquisar um item na tabela e validar se está visível   alden@example.com
    Verificar se o conteúdo de uma celula não está na tabela    cierra@example.com  
    Verificar se o conteúdo de uma celula não está na tabela    kierra@example.com

Deve ser possível pesquisar um item pela coluna Age

    Pesquisar um item na tabela e validar se está visível   39
    Verificar se o conteúdo de uma celula não está na tabela    45
    Verificar se o conteúdo de uma celula não está na tabela    29

Deve ser possível pesquisar um item pela coluna Salary

    Pesquisar um item na tabela e validar se está visível   2000
    Verificar o conteúdo de uma celula da tabela    12000
    Verificar se o conteúdo de uma celula não está na tabela    10000 

Deve ser possível remover um item da tabela

    Excluir uma linha da tabela     Kierra

Deve ser possível remover todos os itens da tabela 

   Excluir todos os itens da tabela

Deve ser possível registrar um item na tabela

    ${user}=        Criar dados de um usuário fake

    Abrir o modal de registro de itens da tabela
    Registrar um novo item na tabela  ${user}
    Verificar o conteúdo de uma celula da tabela    ${user.nome}
