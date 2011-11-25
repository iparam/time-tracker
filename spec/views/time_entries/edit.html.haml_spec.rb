require 'spec_helper'

describe "time_entries/edit.html.haml" do
  before(:each) do
    @time_entry = assign(:time_entry, stub_model(TimeEntry,
      :name => "MyString",
      :start_time => 1.5,
      :end_time => 1.5,
      :task_id => 1
    ))
  end

  it "renders the edit time_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => time_entries_path(@time_entry), :method => "post" do
      assert_select "input#time_entry_name", :name => "time_entry[name]"
      assert_select "input#time_entry_start_time", :name => "time_entry[start_time]"
      assert_select "input#time_entry_end_time", :name => "time_entry[end_time]"
      assert_select "input#time_entry_task_id", :name => "time_entry[task_id]"
    end
  end
end
