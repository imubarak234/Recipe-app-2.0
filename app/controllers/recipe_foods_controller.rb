class RecipeFoodsController < ApplicationController
  def new
    puts "All this just to make you stand out in the rain#{params}"
    @recipe_food = RecipeFood.new
    respond_to do |format|
      format.html { render :new, locals: { recipe_foods: @recipe_food } }
    end
  end

  def create
    recipe_food_create = RecipeFood.new(params.require(:recipe_foods).permit(:quantity, :food_id))
    recipe_food_create.update(recipe_id: params[:recipe_id])

    respond_to do |format|
      format.html do
        if recipe_food_create.save
          flash[:success] = 'Ingredient created successfully'
          redirect_to "/recipes/#{params[:recipe_id]}"
        else
          flash.now[:error] = 'Error: Ingredient could not be created'
          render :new, locals: { recipe_foods: @recipe_food }
        end
      end
    end
  end

  def destroy
    recipe_food = RecipeFood.find(params[:id])
    recipe_food.destroy
    redirect_to "/recipes/#{params[:recipe_id]}"
  end
end
