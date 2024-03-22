*** Settings ***
Resource    ../main.robot

*** Variables ***
## Criando as variavéis

${campo cadastrar}    xpath=//*[@data-test="register"]
${campo e-mail}    xpath=//*[@data-test="email"]
${campo fullName}    xpath=//*[@data-test="fullName"]
${campo registerUserName}    xpath=//*[@data-test="registerUserName"]
${campo registerPassword}    xpath=//*[@data-test="registerPassword"]
${campo registrar}    xpath=//*[@data-test="btnRegister"]    
${campo loginUserName}    xpath=//*[@data-test="loginUserName"]
${campo loginPassword}     xpath=//*[@data-test="loginPassword"]
${campo cadastrar}    xpath=//*[@data-test="register"]
${campo registrar}    xpath=//*[@data-test="btnRegister"]

*** Keywords ***
## Criando o BDD
quando clico em criar usuário
    Click Element    xpath=//*[@data-test="register"]

e crie um usuário 
    Input Text    ${campo e-mail}    teste@email.com
    Input Text    ${campo fullName}    teste robot 
    Input Text    ${campo registerUserName}    teste1
    Input Password    ${campo registerPassword}    lore9090
    Sleep    5s
    Click Button    xpath=//*[@data-test="btnRegister"]
    Click Link   xpath=//*[@href="#/"]
    Click Link    xpath=//*[@href="#/"]
    Sleep    5s

então deve ser possivel realizar o login com o usuário criado
    Input Text    ${campo loginUserName}    teste1
    Input Password    ${campo loginPassword}    lore9090
    Click Button    xpath=//*[@data-test="loginBtn"]
    Sleep    5s

    quando clico em criar usuário
    Click Element    xpath=//*[@data-test="register"]

e clico em registrar sem preencher os dados
    Click Button    xpath=//*[@data-test="btnRegister"]
    Click Button    xpath=//*[@data-test="btnRegister"]
    Sleep    5s

então a mensagem de campo obrigatório é apresentada
    Element Should Be Visible    xpath=//*[@text="Email is required!"]
    Element Should Be Visible    xpath=//*[@text="Full name is required!"]
    Element Should Be Visible    xpath=//*[@text="User name is required!"]
    Element Should Be Visible    xpath=//*[@text="Password is required!"]
    Sleep    5s