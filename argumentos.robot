*** Keywords ***
Somar os numeros
    [Arguments]    ${Num_A}    ${Num_B}
    ${SOMA}    Evaluate    ${Num_A}+${Num_B}
    [Return]    ${SOMA}
Subtrair os numeros   
    [Arguments]    ${Num_A}    ${Num_B}
    ${SUBTRAIR}    Evaluate    ${Num_A}-${Num_B}
    [Return]    ${SUBTRAIR}

Dividindo os numeros
    [Arguments]    ${Num_A}    ${Num_B}
    ${DIVIDIR}    Evaluate    ${Num_A}/${Num_B}
    [Return]    ${DIVIDIR}

Multiplicar os numeros
    [Arguments]    ${Num_A}    ${Num_B}
    ${MULTIPLICAR}    Evaluate    ${Num_A}*${Num_B}
    [Return]    ${MULTIPLICAR}

Nome para o e-mail
    [Arguments]    ${e-mail}
    [Return]    ${e-mail} @teste.com.br

*** Test Cases ***
Somando os numeros
    ${RESULTADO}    Somar os numeros    25    10
    Log To Console    ${RESULTADO}

Subtraindo os numeros
    ${RESULTADO}    Subtrair os numeros    30    15
    Log To Console    ${RESULTADO}

Dividindo os numeros
    ${RESULTADO}    Dividindo os numeros    8    2
    Log To Console    ${RESULTADO}

Multiplicando os numeros
    ${RESULTADO}    Multiplicar os numeros    5    10  
    Log To Console    ${RESULTADO}

Retornando nome para o email 
    ${e-mail}    Nome para o e-mail    Enzo  
    Log To Console    ${e-mail}