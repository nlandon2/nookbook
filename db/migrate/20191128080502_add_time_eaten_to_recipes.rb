class AddTimeEatenToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :time_eaten, :date
  end
end
