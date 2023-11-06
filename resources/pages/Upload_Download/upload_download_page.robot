*** Settings ***

Resource      ${EXECDIR}/resources/locators/Upload_Download/upload_download_locators.robot

*** Keywords ***

Clicar no botão de upload de arquivos
  Click     ${BTN_UPLOAD}

Clicar no botão de Download de arquivos
  Click     ${BTN_DOWNLOAD}

Upload de um arquivo pelo seletor
  [Arguments]   ${file_path}    ${file_name}

  ${file}=    Catenate    SEPARATOR=//     ${file_path}       ${file_name}
  Upload File By Selector   ${BTN_UPLOAD}    ${file}

Upload de um arquivo 
  [Arguments]   ${file_path}    ${file_name}

  ${file}=    Catenate    SEPARATOR=//     ${file_path}       ${file_name}
  ${promise}=    Promise To Upload File    ${file}

  [Return]    ${promise}

Validar se path do arquivo após o upload
  [Arguments]     ${file_name}

  ${file}=    Catenate     SEPARATOR=//    C://fakepath      ${file_name}
  Get Text    ${UPLOAD_FILE_PATH}   ==     ${file}

Aguardar o download de um arquivo
  [Arguments]     ${file_name}

  ${file}=    Catenate     SEPARATOR=//    ${PASTA_DOWNLOAD_ARQUIVOS}      ${file_name}
  ${dl_promise}          Promise To Wait For Download    ${file}

  [Return]    ${dl_promise}
