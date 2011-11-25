# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "MyString"
    description "MyText"
    assigned_id 1
    start_date "2011-11-25 19:20:48"
    end_date "2011-11-25 19:20:48"
    estimated_hour 1.5
    total_hour 1.5
    project_id 1
  end
end
