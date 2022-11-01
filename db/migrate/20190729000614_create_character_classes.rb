class CreateCharacterClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :character_classes do |t|
      t.string :name, null: false
      t.integer :strength, null: false, default: 0
      t.integer :dexterity, null: false, default: 0
      t.integer :agility, null: false, default: 0
      t.integer :intelligence, null: false, default: 0
      t.integer :luck, null: false, default: 0
      t.integer :stamina, null: false, default: 0
      t.integer :charisma, null: false, default: 0

      t.timestamps
    end
  end
end
