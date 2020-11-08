class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    technology = Technology.find_or_create_by(name: params[:technology].downcase)
    category = Category.find_or_create_by(name: params[:category].downcase,
                                          technology: technology)

    Project.create!(project_params.merge(category: category))

    redirect_to category_path(technology: technology.name,
                              name: category.name)
  end

  def project_params
    params.require(:project).permit(:github_path)
  end
end
