require 'rails_helper'

RSpec.describe Klass, type: :model do
  it { is_expected.to belong_to(:grade) }
  it { is_expected.to belong_to(:teacher) }
  it { is_expected.to belong_to(:distribution_process) }
end
