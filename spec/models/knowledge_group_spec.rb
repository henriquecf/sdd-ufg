require 'rails_helper'

RSpec.describe KnowledgeGroup, type: :model do
  it { is_expected.to have_many(:grades) }
  it { is_expected.to have_many(:knowledge_levels) }
  it { is_expected.to have_many(:teachers).through(:knowledge_levels) }
end
