require 'rails_helper'

RSpec.describe KnowledgeLevel, type: :model do
  it { is_expected.to belong_to(:teacher) }
  it { is_expected.to belong_to(:knowledge_group) }
  it { is_expected.to validate_presence_of(:level) }

  it "level default value 1" do
    expect(KnowledgeLevel.create.level).to eq(1)
  end
end
