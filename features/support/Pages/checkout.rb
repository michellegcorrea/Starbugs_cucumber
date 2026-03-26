require 'rspec'

class CheckOut
    include Capybara::DSL
    include RSpec::Matchers

    def assert_product_details(product)
        # 1. Valida o título do produto
        product_title = find('.item-details h1')
        # Usamos ['product'] porque é o nome da coluna na sua tabela Gherkin
        expect(product_title.text).to eql product['product']
       
        # 2. Valida o subtotal (preço do café)
        sub_price = find('.subtotal .sub-price')
        expect(sub_price.text).to eql product['price']
            
        # 3. Valida o frete
        delivery_price = find('.delivery-price')
        expect(delivery_price.text).to eql product['delivery']
    end

    def assert_total_price(total_price)
        price = find('.total-price')
        # Use 'total_price', que é o nome do argumento ali em cima
        expect(price.text).to eql total_price 
    end
end