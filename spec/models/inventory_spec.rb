require 'rails_helper'

RSpec.describe Inventory, type: :model do
  user = User.create(name: 'A.K Verma')
  subject { Inventory.new(name: 'Sweets Corner', user: user) }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'user_id should be present' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end

  it 'name should be "Sweets Corner"' do
    expect(subject.name).to eql('Sweets Corner')
  end

  it 'User name should be "A.K Verma"' do
    expect(subject.user.name).to eql('A.K Verma')
  end
end
