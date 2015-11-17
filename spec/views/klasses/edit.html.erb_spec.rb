require 'rails_helper'

RSpec.describe "klasses/edit", type: :view do
  before(:each) do
    @klass = assign(:klass, Klass.create!(
      :workload => "",
      :distribution_process => nil,
      :teacher => nil,
      :grade => nil
    ))
  end

  it "renders the edit klass form" do
    render

    assert_select "form[action=?][method=?]", klass_path(@klass), "post" do

      assert_select "input#klass_workload[name=?]", "klass[workload]"

      assert_select "input#klass_distribution_process_id[name=?]", "klass[distribution_process_id]"

      assert_select "input#klass_teacher_id[name=?]", "klass[teacher_id]"

      assert_select "input#klass_grade_id[name=?]", "klass[grade_id]"
    end
  end
end
