class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_type
      t.integer :character_id
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
