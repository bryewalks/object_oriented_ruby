module Store_name

class Store_Item

  attr_reader :price, :color, :weight
  attr_writer :price


  def initialize(input_options)
    @price = input_options[:price]
    @color = input_options[:color]
    @item = input_options[:item]
  end

  def print_info

    p "#{@price} #{@color} #{@item}"

  end

end

end





# p ball_1

# basketball = Store_Item.new(
#                             item: "basketball",
#                             price: 8,
#                             color: "orange")

# football = Store_Item.new(item: "soccerball"12, "white", 3)

# football.print_info




# basketball =  (8,  "orange", 2)
# soccor_ball =  (12, "white", 3)

# puts basketball.price