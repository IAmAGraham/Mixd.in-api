class Tag < ApplicationRecord
  has_many :drink_tags
  has_many :drinks, through: :drink_tags
end
