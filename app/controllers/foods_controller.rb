class FoodsController < ApplicationController
  # before_action :authenticate_user!
  def index
    @foods = Food.all
  end

  def new
    @food_new = current_user.food.new
    respond_to do |format|
      format.html { render :new, locals: { foods: @food_new } }
    end
  end

  def create
    food_create = Food.new(params.require(:foods).permit(:name, :measurement_unit, :price))
    food_create.update(user_id: current_user.id)

    respond_to do |format|
      format.html do
        if food_create.save
          flash[:success] = 'Food created successfully'
          redirect_to foods_url
        else
          flash.now[:error] = 'Error: Food could not be created'

          render :new, locals: { foods: @food_new }
        end
      end
    end
  end

  def destroy
    puts "This is an attempt to make you stand out #{params}"
    food_destroy = Food.find(params[:id])
    food_destroy.destroy
    flash[:notice] = "Food succesfully deleted"
    redirect_to foods_url
  end
end
