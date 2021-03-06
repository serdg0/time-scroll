require 'rails_helper'

RSpec.describe Project, type: :model do
    describe 'validations' do
        it { should validate_presence_of(:name) }
        it { should validate_length_of(:name).is_at_least(3)}
    end

    describe 'association' do
        it { should belong_to(:user) }
    end
end
