class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :name, presence: true, uniqueness: true
  validates :qty, numericality: { only_integer: true }, presence: true
end
