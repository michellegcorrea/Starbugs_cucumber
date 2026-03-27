Quando('acesso a pagina principal da starbugs') do
    @home.open
end

Então('eu devo ver a lista de cafés disponiveis') do
    expect(@home.coffee_list.size).to be > 0
end

Dado('que estou na pagina principal da starbugs') do
    @home.open
end

Dado('que desejo comprar o seguinte produto:') do |table|
    @product = table.rows_hash
end

# Quando('inicio a compra desse item') do
#     @home.buy(@product['product'])
# end
Quando('inicio a compra desse item') do
    @home.buy(@product['product'])
end

Então('devo ver a pagina de check out com os detalhes do produto') do
    @checkout.assert_product_details(@product)
end

Então('o valor total da compra deve ser de {string}') do |total_price|
    @checkout.assert_total_price(total_price)
end

Então('devo ver um popup informando que o produto esta indisponivel') do
   @popup.have_text('Produto indisponível')
end