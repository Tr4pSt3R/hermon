require 'rails_helper'

RSpec.describe "Heralds", :type => :request do
  describe "GET /heralds" do
    it "works! (now write some real specs)" do
      get heralds_path
      expect(response.status).to be(200)
    end
  end
end
