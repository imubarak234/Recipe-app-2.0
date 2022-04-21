class RecipesController < ApplicationController
  def index
    @recipe = Recipe.all
  end

  def destroy
    puts "This is an attempt to make you stand out #{params}"
    recipe_destroy = Recipe.find(params[:id])
    recipe_destroy.destroy
    flash[:notice] = 'Food succesfully deleted'
    redirect_to recipe_url
  end
end
