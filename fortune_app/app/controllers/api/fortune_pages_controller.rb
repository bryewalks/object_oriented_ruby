class Api::FortunePagesController < ApplicationController
  def fortune_action
    # @fortune = rand(1..3)
    # if @fortune == 1
    #   render 'fortune1_view.json.jbuilder'
    # elsif @fortune == 2
    #   render 'fortune2_view.json.jbuilder'
    # elsif @fortune == 3
    #   render 'fortune3_view.json.jbuilder'
    # end   
    # Josh Solution VVVV
    possible_fortunes = [
                          "you shall be rich and famous",
                          "you will die a horrible death.",
                          "...I will tell you after you pay the $25 fee."]
    @fortune = "I look into my crystal and see that... #{possible_fortunes.sample}"
    render 'fortune_view.json.jbuilder'

  end

  def lotto_action
    # @lotto_numbers_array = []
    # 6.times do 
    #   @number = rand(1..60)
    #   @lotto_numbers_array << @number
    # end
    # render 'lotto_numbers_view.json.builder'
    possible_numbers = (1..60).to_a.shuffle
    @lotto_numbers = possible_numbers.pop(6)
    @formatted_numbers = @lotto_numbers.join(", ")

    render 'lotto_numbers_view.json.jbuilder'
  end
end
