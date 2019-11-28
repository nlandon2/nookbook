class Recipe < ApplicationRecord
    has_many :ingredients, dependent: :delete_all
    belongs_to :user
    def start_time 
        self.time_eaten
    end
end
