# methods
def stock_picker(prices)
  days = prices.length
  roi_hash = Hash.new
  prices.each_with_index do |price, day_to_buy|
    day_to_sell = day_to_buy + 1
    while day_to_sell < days do
      if day_to_sell > day_to_buy
        day_array = []
        
        return_on_investment = prices[day_to_sell] - prices[day_to_buy]
        
        
        day_array = [day_to_buy, day_to_sell]
        
        roi_hash[return_on_investment] = day_array
      end
      day_to_sell += 1
    end
    
  end

  best_days = roi_hash.max_by{|roi, days| roi}
  p best_days[1]
end

# variables
prices = [17,3,6,9,15,8,6,1,10]


# program
stock_picker(prices)