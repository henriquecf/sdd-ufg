require 'rails_helper'

RSpec.describe DistributionProcess, type: :model do
  it { is_expected.to have_many(:klasses) }
  it { is_expected.to validate_presence_of(:semester) }
  it { is_expected.to validate_presence_of(:klass_registry_start) }
  it { is_expected.to validate_presence_of(:teacher_intent_start) }
  it { is_expected.to validate_presence_of(:first_resolution_start) }
  it { is_expected.to validate_presence_of(:substitute_resolution_start) }
  it { is_expected.to validate_presence_of(:conclusion) }
end
