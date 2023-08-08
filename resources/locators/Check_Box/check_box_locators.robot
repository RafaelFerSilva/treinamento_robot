*** Variables ***

&{CHECK_BOX_ITENS}                                  Home=home
...                                                 Desktop=desktop
...                                                 Documents=documents
...                                                 Downloads=downloads

${CHECK_BOX_EXPANDED}                               //span[text()="$$"]//ancestor::li[contains(@class, "rct-node-expanded")]
${CHECK_BOX_COLLAPSED}                              //span[text()="$$"]//ancestor::li[contains(@class, "rct-node-collapsed")]
${CHECK_BOX_ITEM}                                   //span[text()="$$"]//ancestor::span[contains(@class, "rct-text")]
${CHECK_BOX_TOOGLE_BUTTON}                          ${CHECK_BOX_ITEM}//button
${CHECKBOX_LABEL}                                   [for=tree-node-$$]
${CHECKBOX_INPUT}                                   [id=tree-node-$$]

