class HomeController < ApplicationController
  def index
    numbers = powerball
    @number_one = numbers[0]
    @number_two = numbers[1]
    @number_three = numbers[2]
    @number_four = numbers[3]
    @number_five = numbers[4]
    @number_six = numbers[5]
  end
  private
  def powerball
       5.times.map { Random.rand(69) + 1 } << (Random.rand(26) + 1)
  end
end
