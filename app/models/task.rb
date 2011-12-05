# == Schema Information
#
# Table name: tasks
#
#  id             :integer         not null, primary key
#  name           :string(255)
#  description    :text
#  assigned_id    :integer
#  start_date     :datetime
#  end_date       :datetime
#  estimated_hour :float
#  total_hour     :float
#  project_id     :integer
#  user_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Task < ActiveRecord::Base
  after_create :add_user
  belongs_to :project
  belongs_to :user
  belongs_to :assignee,:class_name => "User",:foreign_key => "assigned_id"
  scope :by_project,lambda{|project_id| where(:project_id => project_id) if project_id}
  scope :by_client,lambda{|client_id| joins(:project).where("projects.client_id = ?",client_id) if client_id }
  scope :by_assignee,lambda{|assignee_id| where(:user_id=>assignee_id) if assignee_id}

  validates :name, :assigned_id,  :project_id, :presence => true
  #validate :start_and_end_date_range

  def add_user
    self.user = User.first
    self.save
  end
  def self.search(params)
    self.by_project(params[:project]).by_client(params[:client]).by_assignee(params[:assignee]).all
  end
  
  private
  def start_and_end_date_range
    errors.add(:start_date, "can't be greater then end date") if (self.start_date.present? && self.end_date.present?) && self.start_date > self.end_date
  end



end
