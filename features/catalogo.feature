# language: pt

Funcionalidade: Catalogo de cafés
    Como um usuario da starbugs, eu quero ver o Catalogo de cafés na pagina principal
    Para que eu possa escolher e saber mais sobre os produtos disponiveis.

Cenário: Acessar o catalogo de cafés na pagina principal

    Quando acesso a pagina principal da starbugs
    Então eu devo ver a lista de cafés disponiveis

Cenario: Iniciar a compra de um café

    Dado que estou na pagina principal da starbugs
        E que desejo comprar o seguinte produto:
        | product  | Expresso Gelado| 
        | price    | R$ 9,99        |
        | delivery | R$ 10,00       |
    Quando inicio a compra desse item
    Então devo ver a pagina de check out com os detalhes do produto
        E o valor total da compra deve ser de "R$ 19,99"  

Cenario: Café indisponivel

     Dado que estou na pagina principal da starbugs
        E que desejo comprar o seguinte produto:
        | product  | Expresso Cremoso | 
     Quando inicio a compra desse item
     Então devo ver um popup informando que o produto esta indisponivel