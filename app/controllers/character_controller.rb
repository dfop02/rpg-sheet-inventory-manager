class CharacterController < ApplicationController
  def create
    @character = Character.create(character_params)
  end

  private

  def character_params
    params.require(:character).permit(
      :name,
      :strength,
      :dexterity,
      :agility,
      :intelligence,
      :stamina,
      :luck,
      :charisma,
      :level,
      :character_class_id,
      :character_race_id
    )
  end
end
