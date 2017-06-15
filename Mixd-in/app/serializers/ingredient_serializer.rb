class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit
  belongs_to :drink
end
