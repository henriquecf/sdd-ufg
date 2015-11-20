require 'rails_helper'

RSpec.describe KnowledgeLevel, type: :model do
  it { is_expected.to belong_to(:teacher) }
  it { is_expected.to belong_to(:knowledge_group) }
  it { is_expected.to validate_presence_of(:level) }

  it "should validate uniqueness of teacher scoped to knowledge group" do
    create(:teacher)
    knowledge_group = create(:knowledge_group)
    knowledge_level = knowledge_group.knowledge_levels.first
    expect(knowledge_level).to validate_uniqueness_of(:teacher_id).scoped_to(:knowledge_group_id)
  end

  it "level default value 1" do
    expect(KnowledgeLevel.create.level).to eq(1)
  end
end
