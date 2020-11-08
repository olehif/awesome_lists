require 'rails_helper'

RSpec.describe Technology, type: :model do
  let(:valid_technology) { FactoryBot.build(:technology) }
  let(:invalid_technology) { FactoryBot.build(:technology, :invalid) }

  it 'is valid with valid attributes' do
    expect(valid_technology.valid?).to be true
  end

  it 'is not valid with invalid attributes' do
    expect(invalid_technology.valid?).to be false
  end
end
