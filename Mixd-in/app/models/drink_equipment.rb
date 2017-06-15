class DrinkEquipment < ApplicationRecord
  belongs_to :drink
  belongs_to :equipment
end
