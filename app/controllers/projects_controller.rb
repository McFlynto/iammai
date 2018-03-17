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
    add_more_images(images_params[:images])
    redirect_to '/manage' if @project.update(update_params)
  end

  def destroy
    @project = Project.find_by(slug: params[:slug])
    redirect_to '/manage' if @project.destroy
  end

  def delete_image
    @project = Project.find_by(slug: params[:slug])
    remove_image_at_index(params[:id].to_i)
    flash[:error] = 'Failed deleting image' unless @project.save
    redirect_to '/manage/edit/' + params[:slug]
  end

  private

  def project_params
    params.require(:project)
          .permit(:title, :slug, :description, :previewImage, { images: [] })
  end

  def update_params
    params.require(:project)
          .permit(:title, :slug, :description, :previewImage)
  end

  def images_params
    params.require(:project).permit({ images: [] })
  end

  def add_more_images(new_images)
    if new_images.present?
      images = @project.images
      images += new_images
      @project.images = images
    end
  end

  def remove_image_at_index(image_index)
    remaining_images = @project.images
    deleted_image = remaining_images.delete_at(image_index)
    deleted_image.try(:remove!)
    if remaining_images.empty?
      @project.write_attribute(:images, [])
    else
      @project.images = remaining_images
    end
  end
end
