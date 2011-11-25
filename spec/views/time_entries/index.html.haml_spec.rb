require 'spec_helper'

describe "time_entries/index.html.haml" do
  before(:each) do
    assign(:time_entries, [
      stub_model(TimeEntry,
        :name => "Name",
        :start_time => 1.5,
        :end_time => 1.5,
        :task_id => 1
      ),
      stub_model(TimeEntry,
        :name => "Name",
        :start_time => 1.5,
        :end_time => 1.5,
        :task_id => 1
      )
    ])
  end

  it "renders a list of time_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
