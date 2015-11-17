require 'rails_helper'

RSpec.describe "distribution_processes/new", type: :view do
  before(:each) do
    assign(:distribution_process, DistributionProcess.new(
      :semester => "MyString"
    ))
  end

  it "renders new distribution_process form" do
    render

    assert_select "form[action=?][method=?]", distribution_processes_path, "post" do

      assert_select "input#distribution_process_semester[name=?]", "distribution_process[semester]"
    end
  end
end
