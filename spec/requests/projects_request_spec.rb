require 'rails_helper'

RSpec.describe "Projects", type: :request do
  it 'is rendering new page' do
    get '/new'
    expect(response).to render_template(:new)
  end
end
