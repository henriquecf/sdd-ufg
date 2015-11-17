require 'rails_helper'

RSpec.describe "klasses/index", type: :view do
  before(:each) do
    assign(:klasses, [
      Klass.create!(
        :workload => "",
        :distribution_process => nil,
        :teacher => nil,
        :grade => nil
      ),
      Klass.create!(
        :workload => "",
        :distribution_process => nil,
        :teacher => nil,
        :grade => nil
      )
    ])
  end

  it "renders a list of klasses" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
