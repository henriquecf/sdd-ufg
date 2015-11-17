require 'rails_helper'

RSpec.describe Grade, type: :model do
  it { is_expected.to have_and_belong_to_many(:courses) }
  it { is_expected.to belong_to(:knowledge_group) }
end
