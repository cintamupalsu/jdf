class Role < ApplicationRecord
    has_many :role_transactions, dependent: :destroy
end
