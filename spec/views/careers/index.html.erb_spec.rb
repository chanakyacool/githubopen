require 'spec_helper'

describe "careers/index" do
  before(:each) do
    assign(:careers, [
      stub_model(Career,
        :job_name => "Job Name",
        :description => "MyText",
        :how_to_apply => "MyText"
      ),
      stub_model(Career,
        :job_name => "Job Name",
        :description => "MyText",
        :how_to_apply => "MyText"
      )
    ])
  end

  it "renders a list of careers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Job Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
