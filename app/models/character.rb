class Character < ApplicationRecord
  has_many :items

  def show_name
    self.name.capitalize
  end
end
