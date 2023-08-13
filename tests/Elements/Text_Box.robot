*** Settings ***

Resource        ${EXECDIR}/resources/utils/common_imports.robot
Resource        ${EXECDIR}/resources/keywords/Text_Box/text_box_keywords.robot

Suite Setup     Run keywords    Abrir o navegador no site da DEMOQA     AND     Acessar a tela do card Elements     AND     Validar se a categoria Elements e suas sub-categorias estão visíveis
Suite Teardown  Fechar o Browser 

Force Tags  elements    text_box

*** Test Cases ***

Devem ser exibidos todos os dados enviados após executar o submit do formulário e todos os campos foram preenchidos
    [Setup]     Run Keywords    Selecionar a sub-categoria Text Box da categoria Elements e validar se o título da página é Text Box    AND
    ...                         Validar se o formulário da tela de Text Box está visível

    ${usuario}=     Criar dados de um usuário fake
    Prencher os campos do formulário da tela de Text Box    ${usuario}
    Realizar submit no formulário da tela de Text Box
    Verificar o output do formulário da tela de Text Box    ${usuario}

    [Teardown]  Limpar os campos do formulário da tela de Text Box