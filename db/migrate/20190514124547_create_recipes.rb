class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.jsonb :ingredients, default: {}

      t.timestamps
    end
  end
end
