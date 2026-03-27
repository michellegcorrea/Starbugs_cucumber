class HomePage
include Capybara::DSL # Esta linha é o segredo!

  def open
    visit 'https://starbugs-qa.vercel.app/'
  end

  def coffee_list  
    return all('.coffee-item')
  end

  def buy(coffee_name)
    product = find('.coffee-item', text: coffee_name, match: :first)
    product.find('.buy-coffee').click
    rescue Capybara::ElementNotFound
    product.find('button').click
  end
end