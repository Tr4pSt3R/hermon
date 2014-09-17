require 'rails_helper'

RSpec.describe "heralds/new", :type => :view do
  before(:each) do
    assign(:herald, Herald.new(
      :message => "MyText"
    ))
  end

  it "renders new herald form" do
    render

    assert_select "form[action=?][method=?]", heralds_path, "post" do

      assert_select "textarea#herald_message[name=?]", "herald[message]"
    end
  end
end
