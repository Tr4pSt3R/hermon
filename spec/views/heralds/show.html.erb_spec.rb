require 'rails_helper'

RSpec.describe "heralds/show", :type => :view do
  before(:each) do
    @herald = assign(:herald, Herald.create!(
      :message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
