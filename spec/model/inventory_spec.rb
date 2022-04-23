require 'rails_helper'

RSpec.describe Inventory, type: :model do
  subject { Inventory.new(name: 'testing', user_id: 1) }

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
