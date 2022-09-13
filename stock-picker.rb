# methods
def stock_picker(prices)
  days = prices.length

  prices.each_with_index do |price, day_to_buy|
    day_to_sell = day_to_buy + 1
    while day_to_sell < days do
      return_on_investment = prices[day_to_buy] - prices[day_to_sell]
      puts "Day to Buy: #{day_to_buy}, Day to Sell: #{day_to_sell}, ROI: #{return_on_investment}"
      day_to_sell += 1
    end
  end

end

# variables
prices = [17,3,6,9,15,8,6,1,10]


# program
stock_picker(prices)