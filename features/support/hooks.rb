require_relative './pages/home.rb'
require_relative './pages/checkout.rb'
require_relative './pages/order.rb'
require_relative './pages/components.rb'
Before do
    @home = HomePage.new
    @checkout = CheckOut.new
    @popup = PopUp.new
    @order =OrderPage.new
end

# After do |scenario| 
#     screenshot = page.save_screenshot("logs/screenshots/#{scenario._id_}.png")
#     attach(screenshot, "image/png","Screenshot")
# end

# Screenshot somente quando houver falha
# After do |scenario| 
#     if (scenario.failed?)
#         screenshot = page.save_screenshot("logs/screenshots/temp.png")
#         attach(screenshot, "image/png","Screenshot")
#     end 
# end