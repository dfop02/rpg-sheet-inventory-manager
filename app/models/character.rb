class Character < ApplicationRecord
  has_many :items
  belongs_to :character_class
  belongs_to :character_race

  validate :character_class
  validate :character_race

  before_save :add_attributes

  def add_attributes
    char_class = self.character_class
    return false unless char_class

    char_race = self.character_race
    return false unless char_race

    self.strength     += char_class.strength     += char_race.strength
    self.dexterity    += char_class.dexterity    += char_race.dexterity
    self.agility      += char_class.agility      += char_race.agility
    self.intelligence += char_class.intelligence += char_race.intelligence
    self.stamina      += char_class.stamina      += char_race.stamina
    self.luck         += char_class.luck         += char_race.luck
    self.charisma     += char_class.charisma     += char_race.charisma
  end

  def class_name
    self.character_class.name
  end

  def race_name
    self.character_race.name
  end
end
