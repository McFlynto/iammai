# Projects
class Project < ApplicationRecord
  mount_uploader :previewImages, PreviewImagesUploader
  mount_uploader :images, ImagesUploader
end
