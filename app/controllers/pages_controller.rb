class PagesController < ApplicationController

  def home
    render({:template => "pages_template/home"})
  end

  def rolls 
    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("how_many_sides").to_i
    @rolls = []
    @num_dice.times do 
      dice = rand(1..@sides)
      @rolls.push(dice)
    end
    render({:template => "pages_template/dice_rolls"})
  end


end
