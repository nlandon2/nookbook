class Recipe < ApplicationRecord
    has_many :ingredients, dependent: :delete_all
    belongs_to :user
    def start_time 
        self.when
    end

    validates :name, presence: true, uniqueness: true
    validates :time, numericality: { only_integer: true }
end
