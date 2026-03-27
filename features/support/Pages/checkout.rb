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
        expect(price.text).to eql total_price 
    end

    def find_zipcode(zipcode)
        find('input[name=cep]').set(zipcode)
        click_on 'Buscar CEP'
    end

    def fill_address(address) 
        find('input[name=number]').set(address['Numero'])
        find('input[name=complement]').set(address['Complemento'])
    end

    def choice_payment(payment_type)
        find('label div', text: payment_type.upcase).click
    end

    def submit 
        click_on 'Confirmar pedido'
    end

    def set_discount(coupon_code)
        find('input[placeholder="Código do cupom"]').set(coupon_code)
        click_on 'Aplicar'
    end

    def assert_notice(text)       
        notice = find('.notice').text
        expect(notice).to eql text
    end
end