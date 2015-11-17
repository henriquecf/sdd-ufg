require "rails_helper"

RSpec.describe DistributionProcessesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/distribution_processes").to route_to("distribution_processes#index")
    end

    it "routes to #new" do
      expect(:get => "/distribution_processes/new").to route_to("distribution_processes#new")
    end

    it "routes to #show" do
      expect(:get => "/distribution_processes/1").to route_to("distribution_processes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/distribution_processes/1/edit").to route_to("distribution_processes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/distribution_processes").to route_to("distribution_processes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/distribution_processes/1").to route_to("distribution_processes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/distribution_processes/1").to route_to("distribution_processes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/distribution_processes/1").to route_to("distribution_processes#destroy", :id => "1")
    end

  end
end
