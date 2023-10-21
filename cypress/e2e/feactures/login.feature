#language: pt

Funcionalidade: Login Swag Labs

    Como usario
    Quero logar no site
    Para fazer compras 

Contexto:

    Dado que eu acesse a página de autenticação do site "soucedemo"

    Cenario: Login válida

        Quando eu  Quando eu digitar o usario "standard_user" 
        E digitar a senha "secret_sauce" 
        Então deve ser exbida a palavra "Products" e um "carrinho"

    Cenário: Login ínvalida

        Quando eu digitar um usuario nao autentificado 
        E digitar a senha "secret_sauce"
        Então de deve aparecer "Epic sadface: Username and password do not match any user in this service"

    Cenario: Senha inválida

        Quando eu digitar o usuario "standard_user" 
        E digitar uma senha nao autentificada
        Então de deve aparecer "Epic sadface: Username and password do not match any user in this service"

Esquema do Cenário: login inválidos com tabela

    Quando eu digitar <usuario>
    E a senha <senha>
    Então deve ser exibida a mensagem <mensagem>

    Exemplos: 
    
    | usario             | senha          | mensagem                                                                    |
    | "usuario_invalido" | "secret_sauce" | "Epic sadface: Username and password do not match any user in this service" |
    | "locked_out_user"  | "xablau123FODA"| "Epic sadface: Username and password do not match any user in this service" |
    | ""                 | "secret_sauce" | "Epic sadface: Username and password do not match any user in this service" |
    | "locked_out_user"  | ""             | "Epic sadface: Username and password do not match any user in this service" |

    


