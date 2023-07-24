*** Settings ***

Resource        ${EXECDIR}/resources/keywords/common_keywords.robot
Resource        ${EXECDIR}/resources/keywords/Home/home_keywords.robot
Resource        ${EXECDIR}/resources/keywords/Categorias/categorias_keywords.robot

Suite Setup     Run keywords    Abrir o navegador no site da DEMOQA     AND     Acessar a tela do card Elements     AND     Validar se a categoria Elements e suas sub-categorias estão visíveis
Suite Teardown  Fechar o Browser 

Force Tags  elements    text_box

*** Test Cases ***

Deve ser possível acessar a sub-categoria Text Box

    Selecionar a sub-categoria Text Box da categoria Elements e validar se o título da página é Text Box
