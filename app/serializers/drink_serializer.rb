class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :ingredients
  has_many :steps
  has_many :tags
  has_many :equipments
end
