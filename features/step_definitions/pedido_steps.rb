Dado('que iniciei a compra do item {string}') do |product|
    @home.buy(product)
end

Quando('faço a busca do segunte CEP: {string}') do |zipcode|
    @checkout.find_zipcode(zipcode)
end

Quando('informo os demais dados do endereço:') do |table|
    address=table.rows_hash
    @checkout.fill_address(address)

end

Quando('escolho a forma de pagamento {string}') do |payment_type|
    @checkout.choice_payment(payment_type)
end

Quando('por fim finalizo a compra') do
    @checkout.submit
end

Então('sou redirecionado para pagina de confirmação de Pedido') do
    @order.assert_order
end

Então('deve ser informado um prazo de entrega: {string}') do |delivery_time|
    @order.assert_delivery_time(delivery_time)
end