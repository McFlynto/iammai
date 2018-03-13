# Show individual projects
class ProjectsController < ApplicationController
  def show
    @project = Project.find_by(slug: params[:slug])
  end

  def create
    @project = Project.new(project_params)
    @project.save
  end

  def update; end

  def destroy
    @project = Project.find_by(slug: params[:slug])
    @project.destroy
  end

  private

  def project_params
    params.require(:project)
          .permit(:title, :slug, :description, :previewImages, { images: [] })
  end
end
