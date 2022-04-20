class Inventory < ApplicationRecord
  belongs_to :user
  has_many :inventory

  validates :name, presence :true
end
