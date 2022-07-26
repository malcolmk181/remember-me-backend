class CreateThings < ActiveRecord::Migration[7.0]
  def change
    create_table :things do |t|
      t.string :name
      t.string :content
      t.string :url
      t.string :image_url
      t.boolean :is_favorite

      t.timestamps
    end
  end
end
