class Api::CarsController < ApplicationController
  def index
    @cars = Car.all
    render "index.json.jb"
  end

  def show 
    @car = Car.find_by(id:1)
    # @car = Car.find_by(id:[params:id])
  end
end
