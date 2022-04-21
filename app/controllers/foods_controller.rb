class FoodsController < ApplicationController
  # before_action :authenticate_user!
  def index
    @foods = Food.all
  end
end
