require 'rails_helper'

RSpec.describe Project, type: :model do
  let(:valid_project) { FactoryBot.build(:project) }
  let(:invalid_project) { FactoryBot.build(:project, :invalid) }

  context :blah do
    before(:each) do
      allow_any_instance_of(GithubInfoFetcher).to receive(:call).and_return({a: :b})
    end

    it 'is valid with valid attributes' do
      expect(valid_project.valid?).to be true
    end

    it 'is not valid with invalid attributes' do
      expect(invalid_project.valid?).to be false
    end
  end
end
