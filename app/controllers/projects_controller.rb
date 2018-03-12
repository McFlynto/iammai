# Show individual projects
class ProjectsController < ApplicationController
  def show
    @project = Project.find_by(slug: params[:slug])
  end
end
