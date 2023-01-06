require 'rails_helper'

RSpec.describe Recipe, type: :model do
  user = User.create(name: 'A.K Verma')
  subject { Recipe.new(name: 'Aloo ka prantha', description: 'Indian Aloo prantha must try' ,user: user) }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'description should be present' do
    subject.description = 'Bye'
    expect(subject).to_not be_valid
  end

  it 'user should be present' do
    subject.user = nil
    expect(subject).to_not be_valid
  end

  it 'name should be "Aloo ka prantha"' do
    expect(subject.name).to eql('Aloo ka prantha')
  end

  it 'description should be "Indian Aloo prantha must try"' do
    expect(subject.description).to eql('Indian Aloo prantha must try')
  end

  it 'user should be "A.K Verma"' do
    expect(subject.user.name).to eql('A.K Verma')
  end
end
