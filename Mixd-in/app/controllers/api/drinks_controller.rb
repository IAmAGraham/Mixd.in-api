class Api::DrinksController < ApplicationController
  def index
    drinks = Drink.all
    render json: drinks
  end


  def show
    drink = Drink.find(params[:id])
    render json: drink
  end
  

  def create
    drink = Drink.create(drinks_params)
    render json: drink
  end


  private

  def drinks_params
    params.require(:drink).permit(:name, :description, :ingredients)
  end

end
