require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  subject { RecipeFood.new(quantity: 2.0, recipe_id: 1, food_id: 1) }

  before { subject.save }

  it 'Quantity should be greater than or equals to 0' do
    subject.quantity = -1
    expect(subject).to_not be_valid
  end
end
