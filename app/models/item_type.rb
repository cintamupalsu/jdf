class ItemType < ApplicationRecord
    has_many :general_items, dependent: :destroy
end
