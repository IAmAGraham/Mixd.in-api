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

    params['drink']['equipments'].each {|equip|
      equ = Equipment.find_or_create_by(name: equip['name'])
          DrinkEquipment.create(drink_id: drink.id, equipment_id: equ.id)
      }

    params['drink']['tags'].each {|tag|
      t = Tag.find_or_create_by(name: tag['name'])
          DrinkTag.create(drink_id: drink.id, tag_id: t.id)
      }

    params['drink']['steps'].each {|step|
      s = Step.find_or_create_by(name: step['name'], length_of_time: step['length_of_time'])
          DrinkStep.create(drink_id: drink.id, step_id: s.id)
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
    params.require(:drink).permit(:name, :description, :ingredients, :equipments, :tags, :steps)
  end

end
