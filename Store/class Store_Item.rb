  module Store

  class Store_Item

    attr_reader :name, :price, :color, :weight
    attr_writer :price


    def initialize(name_input, price_input, color_input, weight_input)
      @name = name_input
      @price = price_input
      @color = color_input
      @weight = weight_input

    end


    def print_info

      p "#{@name} $#{@price} color:#{@color} weight:#{@weight}"

    end
  end
end




  newitem_1 = Store::Store_Item.new("football", 10, "brown", 1)
  newitem_2 = Store::Store_Item.new("basketball", 8, "orange", 2)
  newitem_3 = Store::Store_Item.new("soccorball", 12, "white", 3)

  newitem_1.print_info
  newitem_2.print_info
  newitem_3.print_info




  # basketball =  (8,  "orange", 2)
  # soccor_ball =  (12, "white", 3)

  # puts basketball.price