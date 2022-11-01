require 'rails_helper'

RSpec.describe Character do
  describe 'Relationships' do
    it { is_expected.to belong_to(:character_class) }
    it { is_expected.to belong_to(:character_race) }

    it { is_expected.to have_many(:items) }
  end
end
