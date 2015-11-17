require 'rails_helper'

RSpec.describe "teachers/index", type: :view do
  before(:each) do
    assign(:teachers, [
      Teacher.create!(
        :name => "Name",
        :registry => "Registry",
        :lattes_url => "Lattes Url",
        :formation => "Formation",
        :workload => 1,
        :about => "About",
        :rg => "Rg",
        :cpf => "Cpf"
      ),
      Teacher.create!(
        :name => "Name",
        :registry => "Registry",
        :lattes_url => "Lattes Url",
        :formation => "Formation",
        :workload => 1,
        :about => "About",
        :rg => "Rg",
        :cpf => "Cpf"
      )
    ])
  end

  it "renders a list of teachers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Registry".to_s, :count => 2
    assert_select "tr>td", :text => "Lattes Url".to_s, :count => 2
    assert_select "tr>td", :text => "Formation".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "About".to_s, :count => 2
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
  end
end
