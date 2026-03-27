#language: pt

Funcionalidade: Pedidos

Como um usuario do site Starbugs, eu quero selecionar e comprar cafés 
para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega

Cenario: Compra bem sucedida
    Dado que estou na pagina principal da starbugs
        E que iniciei a compra do item "Expresso Tradicional"
    Quando faço a busca do segunte CEP: "30840372"
        E informo os demais dados do endereço:
        | Numero      | 1250      |
        | Complemento | Apto 102  |
        E escolho a forma de pagamento "Cartão de Débito"
        E por fim finalizo a compra
    Então sou redirecionado para pagina de confirmação de Pedido
        E deve ser informado um prazo de entrega: "20 min - 30 min"