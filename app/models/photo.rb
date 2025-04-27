class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validate :correct_image_mime_type

  private

  def correct_image_mime_type
    if image.attached? && !image.content_type.in?(%w(image/jpeg image/png image/gif))
      errors.add(:image, "must be a JPEG, PNG, or GIF")
    end
  end
end

