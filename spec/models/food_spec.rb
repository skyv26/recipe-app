require 'rails_helper'

RSpec.describe Food, type: :model do
  subject { Food.new(name: 'Apple', measurement_unit: 'grams', price: 12.25) }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'measurement_unit should be present' do
    subject.measurement_unit = nil
    expect(subject).to_not be_valid
  end

  it 'price should be present' do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it 'name should be "Apple"' do
    expect(subject.name).to eql('Apple')
  end

  it 'measurement_unit should be "grams"' do
    expect(subject.measurement_unit).to eql('grams')
  end

  it 'price should be "12.25"' do
    expect(subject.price).to eql(12.25)
  end

end
