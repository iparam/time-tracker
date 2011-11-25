# == Schema Information
#
# Table name: clients
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  account_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Client < ActiveRecord::Base
  belongs_to :account
  has_many :projects
end
