# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipes_show = Recipe.find(params[:id])
  end

  def destroy
    recipe_destroy = Recipe.find(params[:id])
    recipe_destroy.destroy
    flash[:notice] = 'Recipe succesfully deleted'
    redirect_to recipes_url
  end

  def new
    @recipe_new = current_user.recipe.new
    respond_to do |format|
      format.html { render :new, locals: { recipes: @recipe_new } }
    end
  end

  def create
    recipe_create = Recipe.new(params.require(:recipes).permit(:name, :preparation_time, :cooking_time, :description,
                                                               :public))
    recipe_create.update(user_id: current_user.id)

    respond_to do |format|
      format.html do
        if recipe_create.save
          flash[:success] = 'Recipe created successfully'
          redirect_to recipes_url
        else
          flash.now[:error] = 'Error: Recipe could not be created'

          render :new, locals: { recipes: @recipe_new }
        end
      end
    end
  end
end
