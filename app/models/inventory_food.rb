class InventoryFood < ApplicationRecord
  belongs_to :user
  has_many :inventory_food
  has_many :recipe_food
end
