require "./store_item.rb"

class Ball < Store_Item

  def initalize
    super()
    @shape = round
  end

end