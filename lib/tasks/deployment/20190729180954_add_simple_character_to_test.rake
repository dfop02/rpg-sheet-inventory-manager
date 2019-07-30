namespace :after_party do
  desc 'Deployment task: add_simple_character_to_test'
  task add_simple_character_to_test: :environment do
    puts "Running deploy task 'add_simple_character_to_test'"

    CharacterClass.create({
      name: "Arqueiro",
      strength: 8,
      dexterity: 6,
      constitution: 2,
      intelligence: 7,
      wisdom: 5,
      charisma: 5})

    CharacterRace.create({
      name: "Elfo",
      strength: 10,
      dexterity: 9,
      constitution: 1,
      intelligence: 7,
      wisdom: 4,
      charisma: 4})

    Character.create({
      name: "Dark Elf",
      character_class_id: 1,
      character_race_id: 1})

    Item.create({
      name: "Pistola 9mm",
      item_type: "gun",
      character_id: 1,
      active: true})

    puts 'Model tests created.'

    AfterParty::TaskRecord.create version: '20190729180954'
  end
end
