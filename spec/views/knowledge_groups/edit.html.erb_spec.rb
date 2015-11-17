require 'rails_helper'

RSpec.describe "knowledge_groups/edit", type: :view do
  before(:each) do
    @knowledge_group = assign(:knowledge_group, KnowledgeGroup.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit knowledge_group form" do
    render

    assert_select "form[action=?][method=?]", knowledge_group_path(@knowledge_group), "post" do

      assert_select "input#knowledge_group_name[name=?]", "knowledge_group[name]"
    end
  end
end
