require 'spec_helper'

describe "clients/index" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :name => "Name",
        :email => "Email",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :country => "Country",
        :zip => 1,
        :client_project => "Client Project",
        :project_description => "MyText"
      ),
      stub_model(Client,
        :name => "Name",
        :email => "Email",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :country => "Country",
        :zip => 1,
        :client_project => "Client Project",
        :project_description => "MyText"
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Client Project".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
