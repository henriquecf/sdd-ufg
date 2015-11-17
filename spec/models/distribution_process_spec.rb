require 'rails_helper'

RSpec.describe DistributionProcess, type: :model do
  it { is_expected.to have_many(:klasses) }
end
