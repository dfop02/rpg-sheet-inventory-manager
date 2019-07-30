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
    self.constitution += char_class.constitution += char_race.constitution
    self.intelligence += char_class.intelligence += char_race.intelligence
    self.wisdom       += char_class.wisdom       += char_race.wisdom
    self.charisma     += char_class.charisma     += char_race.charisma
  end
end
