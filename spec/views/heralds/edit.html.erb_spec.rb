require 'rails_helper'

RSpec.describe "heralds/edit", :type => :view do
  before(:each) do
    @herald = assign(:herald, Herald.create!(
      :message => "MyText"
    ))
  end

  it "renders the edit herald form" do
    render

    assert_select "form[action=?][method=?]", herald_path(@herald), "post" do

      assert_select "textarea#herald_message[name=?]", "herald[message]"
    end
  end
end
