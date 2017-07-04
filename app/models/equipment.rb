class Equipment < ApplicationRecord
  has_many :drink_equipments
  has_many :drinks, through: :drink_equipments
end
