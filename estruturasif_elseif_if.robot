*** Settings ***
Library    XML
***Keywords***
Validar numeros
    [Arguments]     @{Numeros}
    FOR  ${Numero_Atual}    IN  @{Numeros}     
        IF  '${Numero_Atual}' == "5"
            log to console  Estou no numero ${Numero_Atual}         
        ELSE IF    '${Numero_Atual}' == "8"    
            log to console   Estou no numero ${Numero_Atual}
        ELSE
             log to console  Os numeros 5 e 8 nao foram encontrados   
         END
    END
        
*** Test Case ***
Verificar Números 5 ou 8
     @{Numeros}    create list    1   2   3   4   5   6   7   8   9   10
     Validar numeros  @{Numeros} 