*** Variables ***

${LINKS_H5_TITLE}=                      id=linkWrapper  >> h5   >>  text=$$

&{LINKS}=           Home=id=simpleLink
...                 Home Dinamico=id=dynamicLink
...                 Created=id=created
...                 No Content=id=no-content
...                 Moved=id=moved
...                 Bad Request=id=bad-request
...                 Unauthorized=id=unauthorized
...                 Forbidden=id=forbidden
...                 Not Found=id=invalid-url

${SIMPLE_LINK}=                         id=simpleLink
${DYNAMIC_LINK}=                        id=dynamicLink
${CREATED}=                             id=created
${NO_CONTENT}=                          id=no-content
${MOVED}=                               id=moved
${BAD_REQUEST}=                         id=bad-request
${UNAUTORIZED}=                         id=unauthorized
${FORBIDDEN}=                           id=forbidden
${INVALID_URL}=                         id=invalid-url
${LINK_RESPONSE}=                       id=linkResponse
${LINK_RESPONSE_TEXT}=                  //p[@id="linkResponse" and normalize-space()="Link has responded with staus $$ and status text $$"]


&{API_LINK_RESPONSE}=                   Created=201
...                                     No Content=204
...                                     Moved Permanently=301
...                                     Bad Request=400
...                                     Unauthorized=401
...                                     Forbidden=403
...                                     Not Found=404