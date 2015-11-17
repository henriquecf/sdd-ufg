require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_one(:teacher) }
  it { is_expected.to delegate_method(:coordinator?).to(:teacher) }
end
