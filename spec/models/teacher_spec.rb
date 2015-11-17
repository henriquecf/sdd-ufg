require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to belong_to(:user) }

  describe "#coordinator?" do
    it "returns false" do
      expect(subject.coordinator?).to be_falsey
    end
  end
end
