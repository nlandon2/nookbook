class Recipe < ApplicationRecord
    has_many :ingredients, dependent: :delete_all
    belongs_to :user
end
