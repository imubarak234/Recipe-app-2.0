require 'rails_helper'

RSpec.describe InventoryFood, type: :model do
  subject {InventoryFood.new(quantity: 2.0, food_id: 1, inventory_id: 1)}

  before { subject.save }

  it 'Quantity should be greater than or equals to 0' do
    subject.quantity = -1
    expect(subject).to_not be_valid
  end
end