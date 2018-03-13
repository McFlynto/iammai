# Projects
class Project < ApplicationRecord
  mount_uploader :previewImage, PreviewImageUploader
  mount_uploaders :images, ImagesUploader
end
