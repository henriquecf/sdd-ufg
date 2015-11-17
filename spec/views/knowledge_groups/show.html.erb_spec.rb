require 'rails_helper'

RSpec.describe "knowledge_groups/show", type: :view do
  before(:each) do
    @knowledge_group = assign(:knowledge_group, KnowledgeGroup.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
