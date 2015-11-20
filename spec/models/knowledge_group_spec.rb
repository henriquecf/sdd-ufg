require 'rails_helper'

RSpec.describe KnowledgeGroup, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name) }
  it { is_expected.to have_many(:grades) }
  it { is_expected.to have_many(:knowledge_levels) }
  it { is_expected.to have_many(:teachers).through(:knowledge_levels) }

  context "add default knowledge_level" do
    it "should be automatic for all teachers" do
      teacher = create(:teacher)
      knowledge_group = nil
      expect { knowledge_group = create(:knowledge_group) }.to change { KnowledgeLevel.count}.by(1)
      expect(teacher.knowledge_groups).to include(knowledge_group)
    end
  end
end
