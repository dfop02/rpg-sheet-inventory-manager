class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name          , null: false
      t.integer :strength     , null: false, default: 0
      t.integer :dexterity    , null: false, default: 0
      t.integer :constitution , null: false, default: 0
      t.integer :intelligence , null: false, default: 0
      t.integer :wisdom       , null: false, default: 0
      t.integer :charisma     , null: false, default: 0
      t.integer :level        , null: false, default: 1
      t.integer :character_class_id
      t.integer :character_race_id

      t.timestamps
    end
  end
end
