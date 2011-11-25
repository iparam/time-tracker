require 'spec_helper'

describe "time_entries/show.html.haml" do
  before(:each) do
    @time_entry = assign(:time_entry, stub_model(TimeEntry,
      :name => "Name",
      :start_time => 1.5,
      :end_time => 1.5,
      :task_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
