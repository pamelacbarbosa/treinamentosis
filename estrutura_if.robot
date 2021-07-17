*** Settings ***
Library    String
*** Keywords ***
Maior de Idade
    [Arguments]    ${Idade}
    IF    '${Idade}' >= "18"
        Log To Console    Maior de Idade
    END

Validar Numero 5
	[Arguments]		@{Numeros}
	FOR  ${Numero_Atual}	IN	@{Numeros}
		IF	'${Numero_Atual}' == "5"
			Log To Console	Sucesso
		END
	END
	
	 
*** Test Cases ***
Comparar idade
    Maior de Idade    18

Verificar Numero 5
	@{Numeros}	create list		1	2	3	4	5	6	5	8	9	10
	Validar Numero 5  @{Numeros}