*** Keywords ***
Contar de 0 a 10
    FOR    ${count}    IN RANGE    0    11
        Log To Console    ${count}
    END
Contar número máximo
    [Arguments]    ${MAX}
    FOR    ${count}    IN RANGE    0    ${MAX}
        Log To Console    ${count}
    END

Imprimir Lista 
    [Arguments]    @{Fazenda}
    FOR    ${count}    IN    @{Fazenda}
        Log To Console    ${count}
    END

*** Test Cases ***
Contador 
      Contar de 0 a 10

Crescente
    Contar número máximo    11

Lista  
     Imprimir Lista    @{Animais}
    
*** Variables ***
@{Animais}    Galinha    Porco    Cavalo