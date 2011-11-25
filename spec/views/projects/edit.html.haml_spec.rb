require 'spec_helper'

describe "projects/edit.html.haml" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "MyString",
      :description => "MyText",
      :estimated_budget => 1.5,
      :hourly_rate => 1.5,
      :estimated_hour => 1.5,
      :manager_id => 1
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_name", :name => "project[name]"
      assert_select "textarea#project_description", :name => "project[description]"
      assert_select "input#project_estimated_budget", :name => "project[estimated_budget]"
      assert_select "input#project_hourly_rate", :name => "project[hourly_rate]"
      assert_select "input#project_estimated_hour", :name => "project[estimated_hour]"
      assert_select "input#project_manager_id", :name => "project[manager_id]"
    end
  end
end
