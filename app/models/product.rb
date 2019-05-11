class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
end

module ProductDecorator
  def publication_status
    if published?
      "Published at #{published_at.strftime('%A, %B %e')}"
    else
      "Unpublished"
    end
  end
end

