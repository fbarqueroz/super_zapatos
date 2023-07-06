class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.integer :id_article
      t.string :name
      t.string :description
      t.float :price
      t.float :total_in_shelf
      t.float :total_in_vault
      t.integer :store_id

      t.timestamps
    end
  end
end
