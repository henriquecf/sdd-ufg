require 'rails_helper'

RSpec.describe "teachers/new", type: :view do
  before(:each) do
    assign(:teacher, Teacher.new(
      :name => "MyString",
      :registry => "MyString",
      :lattes_url => "MyString",
      :formation => "MyString",
      :workload => 1,
      :about => "MyString",
      :rg => "MyString",
      :cpf => "MyString"
    ))
  end

  it "renders new teacher form" do
    render

    assert_select "form[action=?][method=?]", teachers_path, "post" do

      assert_select "input#teacher_name[name=?]", "teacher[name]"

      assert_select "input#teacher_registry[name=?]", "teacher[registry]"

      assert_select "input#teacher_lattes_url[name=?]", "teacher[lattes_url]"

      assert_select "input#teacher_formation[name=?]", "teacher[formation]"

      assert_select "input#teacher_workload[name=?]", "teacher[workload]"

      assert_select "input#teacher_about[name=?]", "teacher[about]"

      assert_select "input#teacher_rg[name=?]", "teacher[rg]"

      assert_select "input#teacher_cpf[name=?]", "teacher[cpf]"
    end
  end
end
