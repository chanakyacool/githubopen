require 'spec_helper'

describe "teams/index" do
  before(:each) do
    assign(:teams, [
      stub_model(Team,
        :name => "Name",
        :desgination => "Desgination",
        :email => "Email",
        :facebook_url => "Facebook Url",
        :github_id => "Github",
        :personal_website => "Personal Website",
        :description => "MyText"
      ),
      stub_model(Team,
        :name => "Name",
        :desgination => "Desgination",
        :email => "Email",
        :facebook_url => "Facebook Url",
        :github_id => "Github",
        :personal_website => "Personal Website",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of teams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Desgination".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook Url".to_s, :count => 2
    assert_select "tr>td", :text => "Github".to_s, :count => 2
    assert_select "tr>td", :text => "Personal Website".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
