require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'A Verma') }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'role should be "guest"' do
    expect(subject.role).to eql('guest')
  end

  it 'name should be "A Verma"' do
    expect(subject.name).to eql('A Verma')
  end

end
