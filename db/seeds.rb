# CREATE CLASSES
mage   = CharacterClass.create(name: 'Mago', strength: 4, dexterity: 6, agility: 4, intelligence: 10, stamina: 8, luck: 4, charisma: 5)
archer = CharacterClass.create(name: 'Arqueiro', strength: 4, dexterity: 6, agility: 2, intelligence: 7, stamina: 5, luck: 4, charisma: 5)

# CREATE RACES
elfo  = CharacterRace.create(name: 'Elfo', strength: 7, dexterity: 10, agility: 5, intelligence: 6, stamina: 8, luck: 4, charisma: 4)
human = CharacterRace.create(name: 'Humano', strength: 4, dexterity: 6, agility: 7, intelligence: 7, stamina: 7, luck: 4, charisma: 6)

# CHARACTERS
character_1 = Character.create(
  name: 'Nihcolas',
  character_class: mage,
  character_race: elfo,
  strength: 7,
  dexterity: 10,
  agility: 5,
  luck: 4,
  stamina: 8,
  intelligence: 6,
  charisma: 5
)

character_2 = Character.create({
  name: 'Argman',
  character_class: archer,
  character_race: human,
  strength: 7,
  dexterity: 10,
  agility: 8,
  luck: 4,
  stamina: 8,
  intelligence: 5,
  charisma: 4
})

# ITEMS

staff = Item.create(name: 'Cajado', item_type: 'magic', character_id: character_1.id, active: true)
gun   = Item.create(name: 'Arco Longo', item_type: 'ranged', character_id: character_2.id, active: true)
