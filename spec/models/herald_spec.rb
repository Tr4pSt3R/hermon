require 'rails_helper'

RSpec.describe Herald, :type => :model do
  describe "Send SMS" do 
  	context "when the scheduled time has been reached" do 
  		herald = Fabricate :herald

  		it "fires a delivery" do 
  			
  		end
  	end
  end
end
