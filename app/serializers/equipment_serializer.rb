class EquipmentSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :drinks
end
