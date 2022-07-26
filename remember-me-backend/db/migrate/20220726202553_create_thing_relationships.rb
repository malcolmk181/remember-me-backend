class CreateThingRelationships < ActiveRecord::Migration[7.0]
  def change
    create_table :thing_relationships do |t|
      t.integer :parent_thing_id, null: false, foreign_key: true
      t.integer :child_thing_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
