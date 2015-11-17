require 'rails_helper'

RSpec.describe KlassSchedule, type: :model do
  it { is_expected.to belong_to(:klass) }
end
