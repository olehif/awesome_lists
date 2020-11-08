require 'rails_helper'

RSpec.describe "Technologies", type: :request do
  let!(:technologies) { FactoryBot.create_list(:technology, 5)}
  let!(:categories)   { FactoryBot.create_list(:category, 5, technology: technologies.first)}

  it 'is showing list of technologies' do
    get '/'

    expect(response.body).to include(technologies.last.name)
  end

  it 'is showing list of technologies' do
    get "/#{technologies.first.name}"

    expect(response.body).to include(categories.last.name)
  end
end
