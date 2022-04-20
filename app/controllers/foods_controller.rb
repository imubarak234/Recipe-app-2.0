# frozen_string_literal: true

class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end
end
