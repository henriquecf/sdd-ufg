require 'rails_helper'

RSpec.describe "grades/index", type: :view do
  before(:each) do
    assign(:grades, [
      Grade.create!(
        :name => "Name"
      ),
      Grade.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of grades" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
