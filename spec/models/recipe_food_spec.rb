require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  user = User.create(name: 'A.K Verma')
  recipe = Recipe.create(name: 'Aloo ka prantha', description: 'Indian Aloo prantha must try' ,user: user)
  food = Food.create(name: 'Apple', measurement_unit: 'grams', price: 12.25)

  subject { RecipeFood.new(quantity: 12, recipe: recipe, food: food) }

  before { subject.save }

  it 'quantity should be present' do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end

  it 'recipe_id should be present' do
    subject.recipe_id = nil
    expect(subject).to_not be_valid
  end

  it 'food_id should be present' do
    subject.food_id = nil
    expect(subject).to_not be_valid
  end

  it 'quantity should be present' do
    expect(subject.quantity).to eql(12)
  end

  it 'recipe name should be "Aloo ka prantha"' do
    expect(subject.recipe.name).to eql('Aloo ka prantha')
  end

  it 'food name should be "Apple"' do
    expect(subject.food.name).to eql('Apple')
  end
end
