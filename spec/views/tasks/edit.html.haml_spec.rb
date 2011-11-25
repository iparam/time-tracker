require 'spec_helper'

describe "tasks/edit.html.haml" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :name => "MyString",
      :description => "MyText",
      :assigned_id => 1,
      :estimated_hour => 1.5,
      :total_hour => 1.5,
      :project_id => 1
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path(@task), :method => "post" do
      assert_select "input#task_name", :name => "task[name]"
      assert_select "textarea#task_description", :name => "task[description]"
      assert_select "input#task_assigned_id", :name => "task[assigned_id]"
      assert_select "input#task_estimated_hour", :name => "task[estimated_hour]"
      assert_select "input#task_total_hour", :name => "task[total_hour]"
      assert_select "input#task_project_id", :name => "task[project_id]"
    end
  end
end
