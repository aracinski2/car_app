class Api::CarsController < ApplicationController
  def index
    @cars = "vrooom"
    render "index.json.jb"
  end
end
