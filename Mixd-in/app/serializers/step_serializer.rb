class StepSerializer < ActiveModel::Serializer
  attributes :id, :name, :length_of_time
  belongs_to :drink
end
