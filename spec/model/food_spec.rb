require 'rails_helper'

RSpec.describe Food, type: :model do
  subject { Food.new(name: 'Akara', measurement_unit: 'g', price: 3.5, user_id: 1) }

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Price should be greater than or equals to 0' do
    subject.price = -1
    expect(subject).to_not be_valid
  end
end
