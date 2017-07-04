class StepSerializer < ActiveModel::Serializer
  attributes :id, :name, :length_of_time
  has_many :drinks
end
