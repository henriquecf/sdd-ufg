require 'rails_helper'

RSpec.describe KnowledgeGroup, type: :model do
  it { is_expected.to have_many(:grades) }
end
