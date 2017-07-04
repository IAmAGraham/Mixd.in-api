class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit
  has_many :drinks
end
