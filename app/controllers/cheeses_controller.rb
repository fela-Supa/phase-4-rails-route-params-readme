class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end
  def show
    #find a cheese using id from the url
    cheese = Cheese.find_by(id: params[:id])
    #send json response using cheese object
    render json: cheese
  end
end
