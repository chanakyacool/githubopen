require 'spec_helper'

describe "developers/index" do
  before(:each) do
    assign(:developers, [
      stub_model(Developer,
        :user_id => 1,
        :provider => "Provider",
        :uid => "Uid"
      ),
      stub_model(Developer,
        :user_id => 1,
        :provider => "Provider",
        :uid => "Uid"
      )
    ])
  end

  it "renders a list of developers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Provider".to_s, :count => 2
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
  end
end
