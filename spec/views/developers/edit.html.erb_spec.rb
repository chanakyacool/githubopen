require 'spec_helper'

describe "developers/edit" do
  before(:each) do
    @developer = assign(:developer, stub_model(Developer,
      :user_id => 1,
      :provider => "MyString",
      :uid => "MyString"
    ))
  end

  it "renders the edit developer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", developer_path(@developer), "post" do
      assert_select "input#developer_user_id[name=?]", "developer[user_id]"
      assert_select "input#developer_provider[name=?]", "developer[provider]"
      assert_select "input#developer_uid[name=?]", "developer[uid]"
    end
  end
end
