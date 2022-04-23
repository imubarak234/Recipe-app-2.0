class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food

  validates :quantity, numericality: { greater_than_or_equal_to: 0 }

  def self.pricer(reci)
    var = 0
    RecipeFood.where(recipe: reci).each do |n|
      var += n.food.price
    end
    var
  end
end
