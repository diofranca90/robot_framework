*** Settings ***

Resource    ../resources/main.robot
Test Setup    Dado que eu acesse o Alurapic
Test Teardown    Fechar o navegador
 
## Criando os casos de teste
*** Test Cases ***
Criando um cadastro incorreto
    quando clico em criar usuário
    e clico em registrar sem preencher os dados
    então a mensagem de campo obrigatório é apresentada

