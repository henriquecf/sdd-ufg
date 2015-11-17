require 'rails_helper'

RSpec.describe Grade, type: :model do
  it { is_expected.to belong_to(:course) }
  it { is_expected.to belong_to(:knowledge_group) }
  it { is_expected.to have_many(:klasses) }
end
