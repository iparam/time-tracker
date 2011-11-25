# == Schema Information
#
# Table name: projects
#
#  id               :integer         not null, primary key
#  name             :string(255)
#  description      :text
#  estimated_budget :float
#  hourly_rate      :float
#  estimated_hour   :float
#  start_date       :datetime
#  end_date         :datetime
#  manager_id       :integer
#  client_id        :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Project < ActiveRecord::Base
  has_many :tasks
  belongs_to :client
  belongs_to :manager,:class_name => "User",:foreign_key => "manager_id"
end
