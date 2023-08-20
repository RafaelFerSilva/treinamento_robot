*** Variables ***

${TABLE_SEARCH_BOX}=                        id=searchBox
${TABLE}=                                   .ReactTable
${TABLE_ROW_ITEM}=                          //div[contains(@class, "rt-td") and text()="$$"]//ancestor::div[contains(@class, "rt-tr-group")]
${TABLE_ROW_ITEM_EDIT}=                     ${TABLE_ROW_ITEM}//span[@title="Edit"]
${TABLE_ROW_ITEM_DELETE}=                   ${TABLE_ROW_ITEM}//span[@title="Delete"]
${DELETE_ICON}=                             //span[@title="Delete"]
${TABLE_ROWS_NOT_FOUND}=                    .rt-noData

${ADD_NEW_RECORD_BUTTON}=                   id=addNewRecordButton
${MODAL_HEADER}=                            .modal-header
${MODAL_HEADER_CLOSE}=                      .close
${MODAL_HEADER_FIRST_NAME}=                 id=firstName
${MODAL_HEADER_LAST_NAME}=                  id=lastName
${MODAL_HEADER_EMAIL}=                      id=userEmail
${MODAL_HEADER_AGE}=                        id=age
${MODAL_HEADER_FIRST_SALARY}=               id=salary
${MODAL_HEADER_DEPARTMENT}=                 id=department
${MODAL_HEADER_BUTTON_SUBMIT}=              id=submit

