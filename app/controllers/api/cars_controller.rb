class Api::CarsController < ApplicationController
  def index
    @cars = Car.all
    render "index.json.jb"
  end

  def show 
    # @car = Car.find_by(id:1)
    @car = Car.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @car = Car.new(
      make: params[:make],
      model: params[:model],
      year: params[:year],
    )
    @car.save
    render "show.json.jb"
  end

  def update
    @car = Car.find_by(id: params[:id])
    @car.make = params[:make]
    @car.model = params[:model]
    @car.year = params[:year]

    @car.save

    render "show.json.jb"
  end
end
