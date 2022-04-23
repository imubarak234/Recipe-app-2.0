# frozen_string_literal: true

class GeneralShoppingListsController < ApplicationController
  def index
    # @foody = Food.where.not(id: Food.joins(:recipe_food).pluck(:id))
    # @foody = RecipeFood.all.distinct
    @foody = RecipeFood.select(:food_id, :quantity).select(:food_id).distinct
    @count = RecipeFood.select(:food_id, :quantity).select(:food_id).distinct.pluck(:food_id).count
  end

  helper_method :total_price

  def total_price
    var = 0
    @foody.each do |n|
      var += (RecipeFood.where(food_id: n.food_id).count * n.food.price)
    end
    var
  end
end
