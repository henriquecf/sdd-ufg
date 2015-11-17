require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:knowledge_levels) }
  it { is_expected.to have_many(:knowledge_groups).through(:knowledge_levels) }

  describe "#coordinator?" do
    it "returns false" do
      expect(subject.coordinator?).to be_falsey
    end
  end
end
