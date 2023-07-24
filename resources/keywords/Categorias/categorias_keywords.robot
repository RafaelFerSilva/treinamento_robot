*** Settings ***

Resource        ${EXECDIR}/resources/Pages/Categorias/categorias_page.robot

*** Keywords ***

Validar se a categoria Elements e suas sub-categorias estão visíveis

    Validar se a categoria Elements está visível
    Validar se a sub-categoria Text Box está visível na categoria Elements
    Validar se a sub-categoria Check Box está visível na categoria Elements
    Validar se a sub-categoria Radio Button está visível na categoria Elements
    Validar se a sub-categoria Web Tables está visível na categoria Elements
    Validar se a sub-categoria Buttons está visível na categoria Elements
    Validar se a sub-categoria Links está visível na categoria Elements
    Validar se a sub-categoria Broken Links - Images está visível na categoria Elements
    Validar se a sub-categoria Upload and Download está visível na categoria Elements
    Validar se a sub-categoria Dynamic Properties está visível na categoria Elements

Selecionar a sub-categoria ${sub_categoria} da categoria ${categoria} e validar se o título da página é ${titulo}

    Validar se a categoria Elements e suas sub-categorias estão visíveis
    Clicar na sub-categoria ${sub_categoria} da categoria ${categoria}
    Verificar o header da página do card ${titulo}
