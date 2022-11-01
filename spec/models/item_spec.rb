require 'rails_helper'

RSpec.describe Item do
  describe 'Relationships' do
    it { is_expected.to belong_to(:character) }
  end
end
