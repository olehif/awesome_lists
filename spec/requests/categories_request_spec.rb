require 'rails_helper'

RSpec.describe "Categories", type: :request do
  let!(:category) { FactoryBot.create(:category) }
  let!(:projects) { FactoryBot.create_list(:project, 5, category: category)}

  it 'is showing projects from category' do
    get "/#{category.technology.name}/#{category.name}"

    expect(response.body).to include(projects.last.github_path)
  end
end
