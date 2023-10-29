*** Settings ***

Library   OperatingSystem

Resource    ${EXECDIR}/resources/pages/Upload_Download/upload_download_page.robot
Resource    ${EXECDIR}/resources/keywords/common_keywords.robot

*** Keywords ***

Realizar o upload de um arquivo pelo Selector
  [Arguments]     ${file_path}      ${file_name}

  Upload de um arquivo pelo seletor     ${file_path}    ${file_name}
  Validar se path do arquivo após o upload    ${file_name}

Realizar o upload de um arquivo 
  [Arguments]     ${file_path}      ${file_name}
  ${promise}=   Upload de um arquivo    ${file_path}      ${file_name}
  Clicar no botão de upload de arquivos
  ${upload_result}=    Wait For    ${promise} 
  Validar se path do arquivo após o upload    ${file_name}

Download de um arquivo
  [Arguments]   ${expected_file_name}

  ${dl_promise}    Aguardar o download de um arquivo    ${expected_file_name}
  Clicar no botão de Download de arquivos
  ${file_obj}=      Wait For  ${dl_promise}
  File Should Exist    ${file_obj}[saveAs]

Download de um arquivo pela URL extraindo o href
  [Arguments]   ${elemento_com_href}

  ${href}=          Retornar o href de um elemento    ${elemento_com_href}
  ${file_object}=   Download  ${href}
  File Should Exist    ${file_object}[saveAs]

Download de um arquivo pela URL
  [Arguments]   ${url}

  ${file_object}=   Download    ${url}
  File Should Exist    ${file_object}[saveAs]