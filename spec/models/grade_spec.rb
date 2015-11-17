require 'rails_helper'

RSpec.describe Grade, type: :model do
  it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:course) }
  it { is_expected.to validate_uniqueness_of(:name).scoped_to(:course_id) }
  it { is_expected.to belong_to(:course) }
  it { is_expected.to belong_to(:knowledge_group) }
  it { is_expected.to have_many(:klasses) }
end
