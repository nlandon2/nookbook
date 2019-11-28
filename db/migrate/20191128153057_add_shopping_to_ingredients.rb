class AddShoppingToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :shopping, :boolean, :default => false
  end
end
