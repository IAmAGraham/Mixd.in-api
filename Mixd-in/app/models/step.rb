class Step < ApplicationRecord
  has_many :drink_steps
  has_many :drinks, through: :drink_steps

end
