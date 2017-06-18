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

    params['drink']['ingredients'].each {|ingre|
      ing = Ingredient.find_or_create_by(name: ingre['name'], unit: ingre['unit'])
        amount = ingre['quantity'].to_i*2
        amount.times do
          DrinkIngredient.create(drink_id: drink.id, ingredient_id: ing.id)
        end
      }
    render json: drink
  end

  def destroy
    drink = Drink.find(params[:id])
    drink.destroy
    drinks = Drink.all
    render json: drinks
  end


  private

  def drinks_params
    params.require(:drink).permit(:name, :description, :ingredients)
  end

end
