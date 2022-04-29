class GeneralItem < ApplicationRecord
  belongs_to :item_type
  has_many :attached_images, dependent: :destroy
end
