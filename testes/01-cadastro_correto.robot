*** Settings ***

Resource    ../resources/main.robot
Test Setup    Dado que eu acesse o Alurapic
Test Teardown    Fechar o navegador

## Criando os casos de teste
*** Test Cases ***
Acessar o site Alurapic criar um usuário e realizar o login
    quando clico em criar usuário 
    e crie um usuário
    então deve ser possivel realizar o login com o usuário criado               




