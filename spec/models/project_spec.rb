require 'rails_helper'

RSpec.describe Project, type: :model do
    let(:project) { Project.new }

    context 'when project has no name' do
        it 'is not valid' do
            expect(project).to_not be_valid
        end
    end

    context 'when project has a name' do
        it 'validates presence and length' do
            project.name = 'Name'
            expect(project).to be_valid
        end

        it 'is not valid when length is less than 3' do
            project.name = 'he'
            expect(project).to_not be_valid
        end
    end
end
