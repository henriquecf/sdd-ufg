require 'rails_helper'

RSpec.describe "distribution_processes/edit", type: :view do
  before(:each) do
    @distribution_process = assign(:distribution_process, DistributionProcess.create!(
      :semester => "MyString"
    ))
  end

  it "renders the edit distribution_process form" do
    render

    assert_select "form[action=?][method=?]", distribution_process_path(@distribution_process), "post" do

      assert_select "input#distribution_process_semester[name=?]", "distribution_process[semester]"
    end
  end
end
