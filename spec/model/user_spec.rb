require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Mr one', email: 'm.bthedon@yahoo.com', password: 123_456_789) }

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end
