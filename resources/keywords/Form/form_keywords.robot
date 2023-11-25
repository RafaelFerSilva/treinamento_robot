*** Settings ***

Resource    ${EXECDIR}/resources/pages/Categorias/categorias_page.robot
Resource    ${EXECDIR}/resources/pages/Forms/form_page.robot

*** Keywords ***
Validar se o página do formulário para cadastro de estudantes está visível
    
    Verificar o header da página do card Practice Form
    Validar se o Título do formulário está visível
  
Preencher dados para cadastro do usuário
    [Arguments]   ${usuario} 

    Inserir o primeiro nome do estudante         ${usuario}[nome]
    Inserir o sobrenome nome do estudante        ${usuario}[sobrenome]
    Inserir o e-mail do estudante                ${usuario}[email]
    Inserir o gênero do estudante                ${usuario}[genre]
    Inserir o celular do estudante               ${usuario}[mobile]
    Inserir o endereço do estudante              ${usuario}[endereco_atual]
    Inserir a data de nascimento do estudante    ${usuario}[date_of_birth]
    Realizar o upload de um arquivo              ${EXECDIR}\\assets\   ${usuario}[user_picture]
    Selecionar o estado do estudante             ${usuario}[state]
    Selecionar a cidade do estudante             ${usuario}[city]
    Selecionar um subject para o estudante       ${usuario}[subjects]
    Inserir os habbies do estudante              ${usuario}[hobbies_list]
    Clicar no botão finalizar cadastro de estudante

Validar os dados do modal de submit do form
    [Arguments]    ${usuario}

    Validar o título do modal de submit do form    Thanks for submitting the form
    Validar se na linha Student Name tem o valor ${usuario}[nome] ${usuario}[sobrenome]
    Validar se na linha Student Email tem o valor ${usuario}[email]
    Validar se na linha Gender tem o valor ${usuario}[genre]
    Validar se na linha Mobile tem o valor ${usuario}[mobile]
    Validar a data de nascimento do estudante no modal de submit   ${usuario}[date_of_birth]
    Validar os subjets do estudante no modal de submit     ${usuario}[subjects]
    Validar os hobbies do estudante no modal de submit     ${usuario}[hobbies_list]
    Validar se na linha Picture tem o valor ${usuario}[user_picture]
    Validar o endereço do estudante no modal de submit     ${usuario}[endereco_atual]
    Validar o estado e cidade do estudante no modal de submit     ${usuario}[state]${usuario}[city]

Fechar o modal de confirmação de submit no form
    
    Clicar no botão para fechar o modal de confirmação de submit no form
    Validar se o título do modal de submit não está visível
    