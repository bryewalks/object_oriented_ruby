class Store_Item

attr_reader :price, :color, :weight
attr_writer :price


def initialize(name_input, price_input, color_input, weight_input)

  @price = price_input
  @color = color_input
  @weight = weight_input

end


def print_info

  p "#{@price} #{@color} #{@weight}"

end

























end




football = Store_Item.new("football", 10, "brown", 1)
basketball = Store_Item.new(8, "orange", 2)
football = Store_Item.new(12, "white", 3)

football.print_info




# basketball =  (8,  "orange", 2)
# soccor_ball =  (12, "white", 3)

# puts basketball.price