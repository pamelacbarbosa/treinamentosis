***Keywords***
Verificar Idade
    [Arguments]    ${Idade}
    IF    '${Idade}' >= "18"
        Log To Console  Maior de Idade
    ELSE
        Log To Console  Menor de Idade     
    END

Validar Impar ou Par
	[Arguments]     @{NUMEROS}
    FOR  ${NUMERO_ATUAL}    IN  @{NUMEROS}
        ${Resultado}=     evaluate      ${NUMERO_ATUAL}%2
        IF  '${Resultado}' == "0"
            Log To Console  ${NUMERO_ATUAL} é Par
        ELSE    
            Log To Console  ${NUMERO_ATUAL} é Impar
        END
    END

*** Test Case ***
Comparar idade
    Verificar Idade    10

Verificar Par ou Impar
     @{NUMEROS}    create list     1   2   3   4   5   6   5   8   9   10
     Validar Impar ou Par    @{NUMEROS}  

