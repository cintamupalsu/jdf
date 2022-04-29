class AttachedImage < ApplicationRecord
  belongs_to :general_item
  has_one_attached :image
  default_scope -> { order(created_at: :desc) }
  validates :image, content_type: { in: %w[image/jpeg image/gif image/png], message: "must be a valid image format" },
                    size:         { less_than: 5.megabytes, message: "should be less than 5MB"}
  def display_image
    image.variant(resize_to_limit: [500,500]) 
  end
end
