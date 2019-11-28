class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.belongs_to :user
      t.string :name, unique: true, null: false
      t.string :description
      t.integer :time

      t.timestamps
    end
  end
end
