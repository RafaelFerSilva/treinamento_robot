*** Settings ***

Library    FakerLibrary

Resource    ${EXECDIR}/resources/pages/Text_Box/text_box_page.robot

*** Keywords ***

Validar se o formulário da tela de Text Box está visível

    Validar se o input para o nome do usuário está visível
    Validar se o input para o email do usuário está visível
    Validar se o input para o endereço atual do usuário está visível
    Validar se o input para o endereço permanente do usuário está visível
    Validar se o botão de submit está visível

Prencher os campos do formulário da tela de Text Box
    [Arguments]     ${usuario}

    Inserir um texto no campo do nome do usuário        ${usuario}[nome]
    Inserir um texto no campo de e-mail do usuário      ${usuario}[email]
    Inserir um texto no campo de endereço atual do usuário      ${usuario}[endereco_atual]
    Inserir um texto no campo de endereço permanente do usuário     ${usuario}[endereco_permanente]

Realizar submit no formulário da tela de Text Box

    Clicar no botão submit

Limpar os campos do formulário da tela de Text Box

    Limpar o texto no campo do nome do usuário
    Limpar o texto no campo do email do usuário
    Limpar o texto no campo do endereço atual do usuário
    Limpar o texto no campo do endereço permanente do usuário
    Take Screenshot     log_screenshot=true


Verificar o output do formulário da tela de Text Box
    [Arguments]     ${usuario}

    Verificar se o user name está sendo exibido no output do formulário da tela de Text Box     ${usuario}[nome]
    Verificar se o user email está sendo exibido no output do formulário da tela de Text Box    ${usuario}[email]
    Verificar se o endereço atual está sendo exibido no output do formulário da tela de Text Box    ${usuario}[endereco_atual]
    Verificar se o endereço permanente está sendo exibido no output do formulário da tela de Text Box   ${usuario}[endereco_permanente]
