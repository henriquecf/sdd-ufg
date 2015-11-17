require 'rails_helper'

RSpec.describe "grades/new", type: :view do
  before(:each) do
    assign(:grade, Grade.new(
      :name => "MyString"
    ))
  end

  it "renders new grade form" do
    render

    assert_select "form[action=?][method=?]", grades_path, "post" do

      assert_select "input#grade_name[name=?]", "grade[name]"
    end
  end
end
