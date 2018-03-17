# Projects
class Project < ApplicationRecord
  mount_uploader :previewImage, PreviewImageUploader
  mount_uploaders :images, ImagesUploader

  validates :title, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true
  validates :description, presence: true
  validates :sort_index, numericality: { only_integer: true }
end
