# == Schema Information
#
# Table name: accounts
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  owner_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Account < ActiveRecord::Base
  #these two are commented out because of deprecation warning
  #validates_presence_of :name
	#validates_uniqueness_of :name
  validates :name, :presence => true, :uniqueness => true

	belongs_to :owner,:class_name => "User",:foreign_key => "owner_id"
  has_many :users
  has_many :clients
  has_many :projects,:through=>:clients
  has_many :tasks,:through=>:projects
  accepts_nested_attributes_for :users, :reject_if => :all_blank,:allow_destroy => true

  def after_create
    self.owner = self.users.first
    self.save
  end
end
