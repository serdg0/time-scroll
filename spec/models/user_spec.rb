require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new }

  describe 'validations' do
    it { should validate_presence_of(:username) }
    it { should validate_length_of(:username).is_at_least(3) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) } 
  end

  describe 'associations' do
    it { should have_many(:projects) } 
  end
  
end
