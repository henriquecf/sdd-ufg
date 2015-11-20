require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:klasses) }
  it { is_expected.to have_many(:knowledge_levels) }
  it { is_expected.to have_many(:knowledge_groups).through(:knowledge_levels) }
  it { is_expected.to have_many(:klass_intents) }
  it { is_expected.to have_many(:intents).through(:klass_intents).class_name('KlassIntent').with_foreign_key(:klass_id) }

  describe "#coordinator?" do
    it "returns false" do
      expect(subject.coordinator?).to be_falsey
    end
  end

  describe "roles field" do
    it "should be empty by default" do
      subject = Teacher.create!(user: User.create(email: "e@l.com", password: "hdsah92321"))
      expect(subject.roles).to eq("")
    end

    it "should be serialized as array" do
      subject = Teacher.create!(user: User.create(email: "e@l.com", password: "hdsah92321"), roles: ["role1"])
      expect(subject.roles).to eq(["role1"])
    end
  end

  context "add default knowledge_level" do
    it "should be automatic for all knowledge_groups" do
      knowledge_group = create(:knowledge_group)
      teacher = nil
      expect { teacher = create(:teacher) }.to change { KnowledgeLevel.count}.by(1)
      expect(knowledge_group.teachers).to include(teacher)
    end
  end
end
