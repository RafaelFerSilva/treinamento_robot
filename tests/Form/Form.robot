*** Settings ***

Resource        ${EXECDIR}/resources/utils/common_imports.robot
Resource        ${EXECDIR}/resources/keywords/Form/form_keywords.robot

Suite Setup     Abrir o navegador no site da DEMOQA

Test Setup      Run Keywords    Acessar a tela do card Forms     AND
...                             Selecionar a sub-categoria Practice Form da categoria Forms e validar se o título da página é Practice Form  AND
...                             Validar se o página do formulário para cadastro de estudantes está visível

Test Teardown   Retornar a tela home clicando no link TOOLSQA
Suite Teardown  Fechar o Browser 

Test Tags  form

*** Test Cases ***
Deve ser possível cadastrar um novo estudante
    ${user}=        Criar dados de um usuário fake

    Preencher dados para cadastro do usuário    ${user}
    Validar os dados do modal de submit do form    ${user}
    Fechar o modal de confirmação de submit no form
