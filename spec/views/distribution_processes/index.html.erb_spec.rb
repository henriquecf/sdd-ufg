require 'rails_helper'

RSpec.describe "distribution_processes/index", type: :view do
  before(:each) do
    assign(:distribution_processes, [
      DistributionProcess.create!(
        :semester => "Semester"
      ),
      DistributionProcess.create!(
        :semester => "Semester"
      )
    ])
  end

  it "renders a list of distribution_processes" do
    render
    assert_select "tr>td", :text => "Semester".to_s, :count => 2
  end
end
