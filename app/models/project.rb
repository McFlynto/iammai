# Projects
class Project < ApplicationRecord
  mount_uploader :previewImages, PreviewImagesUploader
  mount_uploaders :images, ImagesUploader
end
