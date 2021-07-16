*** Settings ***
Documentation     Aqui estarão presentes os treinamentos da SIS

***Variables***

#Dicionário
&{Pessoa}    Nome=Pamela    Sobrenome=Barbosa    Profissão=Analista de Testes    Idade=29 anos    Nacionalidade=Brasileira    Estado=São Paulo
#Lista
@{Celular}    Apple    Motorola    Nokia    Samsung    LG
#Dicionario com Evaluate
&{Notas}    N1=5    N2=10    N3=4
#Lista Notas
@{Notas1}    6    7    6  

***Test Cases***
Dicionário_Completo
    Log To Console    ${Pessoa}
Dicionario_Unitario
    Log To Console    ${Pessoa}
    Log    ${Pessoa.Nome}
    Log    ${Pessoa.Sobrenome}
    Log    ${Pessoa.Profissão}
    Log    ${Pessoa.Idade}
    Log    ${Pessoa.Nacionalidade}
    Log    ${Pessoa.Estado}
Lista_Completa
    Log To Console    ${Celular}
    Log     ${Celular}
Lista_unitario
    Log To Console    ${Celular}
    Log    ${Celular[0]}
    Log    ${Celular[1]}
    Log    ${Celular[2]}
    Log    ${Celular[3]}
    Log    ${Celular[4]}
Média
    ${Média}=     evaluate     (${Notas.N1}+${Notas.N2}+${Notas.N3})/3
    Log To Console     ${Média}
    Log     ${Média}

Média_1
    ${Média_1}=    evaluate    (${Notas1[0]}+${Notas1[1]}+${Notas1[2]})/3
    Log To Console    ${Média_1}
    Log    ${Média_1}    