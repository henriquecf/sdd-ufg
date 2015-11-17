require 'rails_helper'

RSpec.describe "KnowledgeGroups", type: :request do
  describe "GET /knowledge_groups" do
    it "works! (now write some real specs)" do
      get knowledge_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
