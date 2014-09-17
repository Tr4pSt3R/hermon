require 'rails_helper'

RSpec.describe "heralds/index", :type => :view do
  before(:each) do
    assign(:heralds, [
      Herald.create!(
        :message => "MyText"
      ),
      Herald.create!(
        :message => "MyText"
      )
    ])
  end

  it "renders a list of heralds" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
