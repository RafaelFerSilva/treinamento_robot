*** Settings ***

Resource        ${EXECDIR}/resources/keywords/common_keywords.robot
Resource        ${EXECDIR}/resources/keywords/Home/home_keywords.robot
Resource        ${EXECDIR}/resources/keywords/Categorias/categorias_keywords.robot

Suite Setup     Abrir o navegador no site da DEMOQA
Suite Teardown  Fechar o Browser 

Force Tags  elements

*** Test Cases ***

Deve ser exibida as sub-categorias da categoria Elements

    Acessar a tela do card Elements
    Validar se a categoria Elements e suas sub-categorias estão visíveis
