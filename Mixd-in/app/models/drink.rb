class Drink < ApplicationRecord
  has_many :drink_ingredients
  has_many :ingredients, through: :drink_ingredients
  has_many :drink_steps
  has_many :steps, through: :drink_steps
  has_many :drink_tags
  has_many :tags, through: :drink_tags
  has_many :drink_equipments
  has_many :equipments, through: :drink_equipments
  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :steps
  accepts_nested_attributes_for :equipments
  accepts_nested_attributes_for :tags
  
end
