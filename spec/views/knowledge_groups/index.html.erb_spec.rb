require 'rails_helper'

RSpec.describe "knowledge_groups/index", type: :view do
  before(:each) do
    assign(:knowledge_groups, [
      KnowledgeGroup.create!(
        :name => "Name"
      ),
      KnowledgeGroup.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of knowledge_groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
