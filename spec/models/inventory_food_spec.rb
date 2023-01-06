require 'rails_helper'

RSpec.describe InventoryFood, type: :model do
  user = User.create(name: 'A.K Verma')
  inventory = Inventory.create(name: 'Sweets Corner', user: user)
  food = Food.create(name: 'Apple', measurement_unit: 'grams', price: 12.25)

  subject { InventoryFood.new(quantity: 15, inventory: inventory, food: food) }

  before { subject.save }

  it 'quantity should be present' do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end

  it 'inventory_id should be present' do
    subject.inventory_id = nil
    expect(subject).to_not be_valid
  end

  it 'food_id should be present' do
    subject.food_id = nil
    expect(subject).to_not be_valid
  end

  it 'quantity should be present' do
    expect(subject.quantity).to eql(15)
  end

  it 'inventory name should be "Sweets Corner"' do
    expect(subject.inventory.name).to eql('Sweets Corner')
  end

  it 'food name should be "Apple"' do
    expect(subject.food.name).to eql('Apple')
  end

end
