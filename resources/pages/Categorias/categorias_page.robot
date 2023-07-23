*** Settings ***

Resource        ${EXECDIR}/resources/keywords/common_keywords.robot
Resource        ${EXECDIR}/resources/locators/Categorias/categorias_locators.robot

*** Keywords ***

Validar se a categoria ${categoria} está visível

    ${element}      Replace String    ${ITEM_CATEGORIA}	  $$    ${categoria}
    Get text    ${element}

Validar se a sub-categoria ${sub_categoria} está visível na categoria ${categoria}

    ${element}      String Replace    ${ITEM_SUB_CATEGORIA}     ${categoria}	  ${sub_categoria}
    Get text    ${element}
