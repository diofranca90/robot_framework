
// projeto robot framework

// *** Settings *** - onde são adicionadas as configurações e bibliotecas
// *** test cases *** - onde são criados os casos de teste
// Captura de elemento - Quando não encontrar o elemento id utilizar - xpath=//*[@]
// *** Variables *** - criando variavéis
// *** Keywords *** - palavra chave para chamar um teste de bloco
// Log To Console - para apresentar no console o esperado

POM - Page Object Model
    Separação entre a lógica dos testes e a sua interface

Estrutura POM criar as pastas
    resources 
        / pages 
            / cadastro.robot
    shared 
        / setup_teardown.robot
    testes 
        / cenários de teste criados