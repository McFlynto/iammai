# Show individual projects
class ProjectsController < ApplicationController
  def show
    @project = Project.find_by(slug: params[:slug])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    redirect_to '/manage' if @project.save
  end

  def edit
    @project = Project.find_by(slug: params[:slug])
  end

  def update
    @project = Project.find_by(slug: params[:slug])
    redirect_to '/manage' if @project.update(project_params)
  end

  def destroy
    @project = Project.find_by(slug: params[:slug])
    redirect_to '/manage' if @project.destroy
  end

  private

  def project_params
    params.require(:project)
          .permit(:title, :slug, :description, :previewImages, { images: [] })
  end
end
