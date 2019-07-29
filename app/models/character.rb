class Character < ApplicationRecord
  has_many :items
  belongs_to :character_class

  validate :character_class

  before_save :add_class_attributes

  def show_name
    self.name.capitalize
  end

  def add_class_attributes
    char_class = self.character_class
    return false unless char_class
    self.strength     += char_class.strength
    self.dexterity    += char_class.dexterity
    self.constitution += char_class.constitution
    self.intelligence += char_class.intelligence
    self.wisdom       += char_class.wisdom
    self.charisma     += char_class.charisma
  end
end
