require 'rails_helper'

RSpec.describe Hotel, type: :model do
  describe 'validations' do
    it { is_expected.to belong_to :company }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:state) }
  end
end
