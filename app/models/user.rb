class User < ApplicationRecord
  has_many :food
  has_many :recipe
  has_many :inventory 
end
