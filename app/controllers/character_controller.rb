class CharacterController < ApplicationController

  def create
    @character = Character.new(character_params)

    @character.save
  end

  private

  def character_params
    character = params[:character] || {}

    params.require(:character).permit(
      :name,
      :strength,
      :dexterity,
      :constitution,
      :intelligence,
      :wisdom,
      :charisma,
      :level
    )
  end

end
