*** Variables ***

${FORM_TITLE}=                                //h5[text()="Student Registration Form"]
${FIRST_NAME}=                                id=firstName
${LAST_NAME}=                                 id=lastName
${USER_MAIL}=                                 id=userEmail
${GENDER}=                                    //input[@value="$$"]/..//label
${MOBILE_NUMBER}=                             id=userNumber
${DATE_OF_BIRTH}=                             id=dateOfBirthInput
${SUBJECTS}=                                  id=subjectsInput
${CHECKBOX_HOBBIES_LABEL}=                    //label[text()="$$"]
${UPLOAD_PICTURE}=                            id=uploadPicture
${CURRENT_ADDRESS}=                           id=currentAddress
${STATE}=                                     //div[@id="state"]//input
${CITY}=                                      //div[@id="city"]//input
${SUBMIT_BUTTON}=                             id=submit
${CLOSE_LARGE_MODAL}=                         id=closeLargeModal
${MODAL_SUBMIT}=                              id=example-modal-sizes-title-lg
${TABLE_DATA}=                                //tr[normalize-space()="$$"]
