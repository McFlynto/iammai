# Main pages controller
class StaticPagesController < ApplicationController
  http_basic_authenticate_with name: ENV['RA_USER'],
                               password: ENV['RA_PASSWORD'],
                               only: :manage

  def home
    @projects = Project.all.order(sort_index: :asc)
  end

  def manage
    @projects = Project.all.order(sort_index: :asc)
  end
end
