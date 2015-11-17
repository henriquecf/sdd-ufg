require 'rails_helper'

RSpec.describe "DistributionProcesses", type: :request do
  describe "GET /distribution_processes" do
    it "works! (now write some real specs)" do
      get distribution_processes_path
      expect(response).to have_http_status(200)
    end
  end
end
