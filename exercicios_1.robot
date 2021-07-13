*** Settings ***
Documentation     Aqui estarão presentes os treinamentos da SIS

*** Variables ***
#Dicionário
&{Pessoa}         Nome=Pamela    Sobrenome=Barbosa    Profissão=Analista de Testes    Idade=29 anos    Nacionalidade=Brasileira    Estado Civil=Casada

#Lista
@{Celular}        Apple    Motorola    Nokia    Samsung    LG

#Dicionario com Evaluate
&{Notas}          N1=5    N2=10    N3=4

*** Test Cases ***
Log To Console $[Pessoa.Nome]
Log ${Pessoa}

Log To Console ${Celular}

Log ${Celular}

Log To Console ${Celular.[0]}

Log ${Celular}

Média
    ${Média}=     evaluate     ${Notas.N1}+${Notas.N3}/3
    Log To Console     ${Média}
    Log     ${Média}
