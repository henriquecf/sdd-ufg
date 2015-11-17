require "rails_helper"

RSpec.describe KnowledgeGroupsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/knowledge_groups").to route_to("knowledge_groups#index")
    end

    it "routes to #new" do
      expect(:get => "/knowledge_groups/new").to route_to("knowledge_groups#new")
    end

    it "routes to #show" do
      expect(:get => "/knowledge_groups/1").to route_to("knowledge_groups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/knowledge_groups/1/edit").to route_to("knowledge_groups#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/knowledge_groups").to route_to("knowledge_groups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/knowledge_groups/1").to route_to("knowledge_groups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/knowledge_groups/1").to route_to("knowledge_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/knowledge_groups/1").to route_to("knowledge_groups#destroy", :id => "1")
    end

  end
end
