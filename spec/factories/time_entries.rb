# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :time_entry do
    name "MyString"
    start_time 1.5
    end_time 1.5
    created_date "2011-11-25 20:05:04"
    task_id 1
  end
end
