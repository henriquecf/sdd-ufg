require 'rails_helper'

RSpec.describe Klass, type: :model do
  it { is_expected.to belong_to(:grade) }
  it { is_expected.to belong_to(:teacher) }
  it { is_expected.to belong_to(:distribution_process) }
  it { is_expected.to have_many(:klass_schedules) }
  it { is_expected.to have_many(:klass_intents) }
  it { is_expected.to have_many(:teachers).through(:klass_intents) }
  it { is_expected.to validate_presence_of(:grade) }
  it { is_expected.to validate_presence_of(:distribution_process) }
  it { expect(create(:klass)).to validate_uniqueness_of(:grade_id).scoped_to(:distribution_process_id) }
end
