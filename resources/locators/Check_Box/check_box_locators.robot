*** Variables ***

&{CHECK_BOX_ITENS}                                  Home=home
...                                                 Desktop=desktop
...                                                 Documents=documents
...                                                 Downloads=downloads
...                                                 Notes=notes

${CHECK_BOX_EXPANDED}                               //span[text()="$$"]//ancestor::li[contains(@class, "rct-node-expanded")]
${CHECK_BOX_COLLAPSED}                              //span[text()="$$"]//ancestor::li[contains(@class, "rct-node-collapsed")]
${CHECK_BOX_ITEM}                                   //span[text()="$$"]//ancestor::span[contains(@class, "rct-text")]
${CHECK_BOX_TOOGLE_BUTTON}                          ${CHECK_BOX_ITEM}//button
${CHECKBOX_LABEL}                                   [for=tree-node-$$]
${CHECKBOX_INPUT}                                   [id=tree-node-$$]

@{CHECKBOX_TEXT_RESULT_LIST}=       home 
...                                 desktop
...                                 notes
...                                 commands
...                                 documents
...                                 workspace
...                                 react
...                                 angular
...                                 veu
...                                 office
...                                 public
...                                 private
...                                 classified
...                                 general
...                                 downloads
...                                 wordFile
...                                 excelFile

${CHECKBOX_TEXT_RESULT}=                            \#result > span.text-success >> text=$$

