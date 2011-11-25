require 'spec_helper'

describe "tasks/index.html.haml" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
        :name => "Name",
        :description => "MyText",
        :assigned_id => 1,
        :estimated_hour => 1.5,
        :total_hour => 1.5,
        :project_id => 1
      ),
      stub_model(Task,
        :name => "Name",
        :description => "MyText",
        :assigned_id => 1,
        :estimated_hour => 1.5,
        :total_hour => 1.5,
        :project_id => 1
      )
    ])
  end

  it "renders a list of tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
