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

  validates :name, :manager_id, :client_id, :presence => true
  #validate :start_and_end_date_range

  private
  def start_and_end_date_range
    errors.add(:start_date, "can't be greater then end date") if (self.start_date.present? && self.end_date.present?) && self.start_date > self.end_date
  end

end
