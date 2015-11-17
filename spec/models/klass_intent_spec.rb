require 'rails_helper'

RSpec.describe KlassIntent, type: :model do
  it { is_expected.to belong_to(:klass) }
  it { is_expected.to belong_to(:teacher) }
end
