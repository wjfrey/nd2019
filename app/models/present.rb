class Present < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  after_create :set_default_photo

  def set_default_photo
    if photo.file.nil?
      self.remote_photo_url = "https://res.cloudinary.com/dqxb19mjv/image/upload/v1548960846/nd2019/present_placeholder.jpg"
    end
    self.save
  end
end
