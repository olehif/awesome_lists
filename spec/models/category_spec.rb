require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:valid_category) { FactoryBot.build(:category) }
  let(:invalid_category) { FactoryBot.build(:category, :invalid) }

  it 'is valid with valid attributes' do
    expect(valid_category.valid?).to be true
  end

  it 'is not valid with invalid attributes' do
    expect(invalid_category.valid?).to be false
  end
end
