require 'spec_helper'

describe "developers/new" do
  before(:each) do
    assign(:developer, stub_model(Developer,
      :user_id => 1,
      :provider => "MyString",
      :uid => "MyString"
    ).as_new_record)
  end

  it "renders new developer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", developers_path, "post" do
      assert_select "input#developer_user_id[name=?]", "developer[user_id]"
      assert_select "input#developer_provider[name=?]", "developer[provider]"
      assert_select "input#developer_uid[name=?]", "developer[uid]"
    end
  end
end
