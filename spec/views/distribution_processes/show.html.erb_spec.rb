require 'rails_helper'

RSpec.describe "distribution_processes/show", type: :view do
  before(:each) do
    @distribution_process = assign(:distribution_process, DistributionProcess.create!(
      :semester => "Semester"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Semester/)
  end
end
