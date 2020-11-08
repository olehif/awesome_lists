class TechnologiesController < ApplicationController
  def show
    @technology = Technology.find_by!(name: params[:name].downcase)
    @categories = @technology.categories
  end

  def index
    @technologies = Technology.all
  end
end
