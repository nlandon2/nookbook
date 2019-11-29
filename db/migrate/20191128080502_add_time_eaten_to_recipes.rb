class AddTimeEatenToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :when, :date
  end
end
