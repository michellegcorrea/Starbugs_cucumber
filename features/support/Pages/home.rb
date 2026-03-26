class HomePage
  include Capybara::DSL # Esta linha é o segredo!

    def open
        visit 'https://starbugs-qa.vercel.app/'
    end

    def coffee_list  
      return all('.coffee-item')
    end

    # def buy(coffee_name)
    #   find('.coffee-item', text: coffee_name).find('.buy-coffee').click
    #   # product = find('.coffee-item', text: @product)
    #   # product.find('.buy-coffee').click
    # end

    def buy(coffee_name)
  # Usamos um seletor que busca o elemento .coffee-item que CONTÉM o nome do café
  # O 'match: :first' ajuda se houver algum elemento invisível duplicado
      product = find('.coffee-item', text: coffee_name, match: :first)
  
  # Em vez de procurar uma classe específica no botão, 
  # vamos clicar no elemento que tem o ícone de carrinho (comum no Starbugs)
  # ou no botão de compra dentro desse card específico
  product.find('.buy-coffee').click
      rescue Capybara::ElementNotFound
  # Se não achar pela classe, tenta clicar pelo CSS de tag de botão
  product.find('button').click
  end
end