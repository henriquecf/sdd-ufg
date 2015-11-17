require 'rails_helper'

RSpec.describe "knowledge_groups/new", type: :view do
  before(:each) do
    assign(:knowledge_group, KnowledgeGroup.new(
      :name => "MyString"
    ))
  end

  it "renders new knowledge_group form" do
    render

    assert_select "form[action=?][method=?]", knowledge_groups_path, "post" do

      assert_select "input#knowledge_group_name[name=?]", "knowledge_group[name]"
    end
  end
end
