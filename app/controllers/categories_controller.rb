class CategoriesController < ApplicationController
  def show
    technology = Technology.find_by!(name: params[:technology].downcase)
    @category = Category.find_by!(name: params[:name].downcase,
                                  technology_id: technology.id)
    @projects = @category.projects
  end
end
