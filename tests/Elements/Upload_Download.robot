*** Settings ***

Resource        ${EXECDIR}/resources/utils/common_imports.robot
Resource        ${EXECDIR}/resources/keywords/Upload_Download/upload_download_keywords.robot

Suite Setup     Abrir o navegador no site da DEMOQA

Test Setup      Run Keywords    Acessar a tela do card Elements     AND
...                             Validar se a categoria Elements e suas sub-categorias estão visíveis    AND
...                             Selecionar a sub-categoria Upload and Download da categoria Elements e validar se o título da página é Upload and Download

Test Teardown   Retornar a tela home clicando no link TOOLSQA
Suite Teardown  Fechar o Browser 

Test Tags  elements    upload_download

*** Test Cases ***
Deve ser possível realizar o upload de um arquivo

    Realizar o upload de um arquivo pelo Selector        ${EXECDIR}\\assets\   robot logo.png

Deve ser possível realizar o upload de um arquivo - Promise

  Realizar o upload de um arquivo   ${EXECDIR}\\assets\   robot logo.png

Realizar download de um arquivo
  
  Download de um arquivo    sampleFile.jpeg

Realizar download de arquivo pela URL

  Download de um arquivo pela URL     ${URL_BTN_DOWNLOAD}

Realizar download de arquivo extraindo o href do botão

  Download de um arquivo pela URL extraindo o href    ${BTN_DOWNLOAD}
